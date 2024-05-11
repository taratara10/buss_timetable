import 'dart:async';

import 'package:buss_timetable/clock/timeline_section.dart';
import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/repository/default_timetable_repository.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_bottom_sheet.dart';
import 'clock_card_section.dart';
import 'clock_ui_state.dart';

final clockViewModelNotifierProvider =
    StateNotifierProvider.autoDispose<ClockViewModel, ClockUiState>((ref) {
  return ClockViewModel(ref.watch(timetableRepositoryProvider));
});

class ClockViewModel extends StateNotifier<ClockUiState> {
  final TimetableRepository _timetableRepository;
  late Timer _timer;

  ClockViewModel(this._timetableRepository) : super(ClockUiState.empty()) {
    _init();
    startTimer();
  }

  void _init() {
    // todo defaultはどうしようか
    StationName current =
        _timetableRepository.getSelectedStationName() ?? StationName('田喜野井');
    _timetableRepository.getTimetable(stationName: current).onSuccess((result) {
      Timetable? currentDayTypeTimetable =
          result.firstWhereOrNull((item) => item.dayType == clock.dayType);
      // todo エラー画面を出したい
      if (currentDayTypeTimetable == null) return;
      List<TimelineState> timelines = currentDayTypeTimetable.toTimelineState(
        now: clock.now(),
        numberOfResult: 4,
      );
      state = ClockUiState(
        dayType: clock.dayType,
        timetable: currentDayTypeTimetable,
        clockCardState: ClockCardState.of(
          nextTimeline: timelines.firstOrNull,
          now: clock.now(),
        ),
        timelines: timelines,
        // todo 仮
        bottomSheetState: ClockBottomSheetState(
          selectedStation: current,
          stations: [
            StationName('津田沼_津08'),
            StationName('田喜野井'),
          ],
        ),
      );
    }).onFailure((failure) {});
  }

  void startTimer() {
    _timer = Timer.periodic(
      // 第一引数 実行間隔
      const Duration(milliseconds: 500),
      // 第二引数 callback
      (timer) {
        // debug
        // DateTime _now = DateTime.now();
        // DateTime now = DateTime(_now.year, _now.month, _now.day, 12, 30);
        DateTime now = clock.now();
        Timetable? timetable = state.timetable;
        if ((now.second % 60) == 0 && timetable != null) {
          // minの変わり目は、全体を再計算
          state = state.copyWith(
            timelines: timetable.toTimelineState(
              numberOfResult: 3,
              now: now,
            ),
          );
        }

        // それ以外はclockのみ再計算
        state = state.copyWith(
          clockCardState: ClockCardState.of(
            nextTimeline: state.timelines.firstOrNull,
            now: now,
          ),
        );
        // todo debug 画面遷移時にcancelされるか確認する
        print('--ss timer ${timer.tick}/ ${timer.isActive}');
      },
    );
  }

  void stopTImer() {
    _timer.cancel();
  }

  void updateSelectedStation(StationName name) {
    _timetableRepository.updateSelectedStationName(stationName: name);
    _init();
  }
}
