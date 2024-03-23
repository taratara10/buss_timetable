import 'dart:async';

import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/repository/default_timetable_repository.dart';
import 'package:clock/clock.dart';
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
    init();
    startTimer();
  }

  void init() {
    StationName current = _timetableRepository.getSelectedStationName();
    _timetableRepository.getTimetable(stationName: current).onSuccess((result) {
      Timetable currentDayTypeTimetable =
          result.firstWhere((item) => item.dayType == clock.dayType);
      List<TimelineState> timelines = currentDayTypeTimetable.toTimelineState(
        now: clock.now(),
        numberOfResult: 4,
      );
      state = ClockUiState(
        dayType: clock.dayType,
        timetable: currentDayTypeTimetable,
        clockCardState: ClockCardState.empty().updateClockState(
          nextTimeline: timelines.firstOrNull,
          now: clock.now(),
        ),
        timelines: timelines,
        // todo 仮
        bottomSheetState: ClockBottomSheetState(
          selectedStation: StationName('津田沼'),
          stations: [
            StationName('津田沼'),
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
              numberOfResult: 4,
              now: now,
            ),
          );
        }

        // それ以外はclockのみ再計算
        state = state.copyWith(
          clockCardState: state.clockCardState.updateClockState(
            nextTimeline: state.timelines.firstOrNull,
            now: now,
          ),
        );
        // todo debug 画面遷移時にcancelされるか確認する
        print('--ss timer ${timer.tick}/ ${timer.isActive}');
      },
    );
  }

  void cancelTimer() {
    _timer.cancel();
  }

  void onTap(StationName name) {
    // save selecting station in preference
    // get station timetable
    // update uiState

    // todo
    state = state.copyWith(
      bottomSheetState: state.bottomSheetState.copyWith(selectedStation: name),
    );
    print('--ss aaaa $name');
  }
}
