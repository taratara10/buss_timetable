import 'dart:async';

import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/repository/default_timetable_repository.dart';
import 'package:clock/clock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_ui_state.dart';

final clockViewModelNotifierProvider =
    StateNotifierProvider.autoDispose<ClockViewModel, ClockUiState>((ref) {
  return ClockViewModel(ref.watch(timetableRepositoryProvider));
});

class ClockViewModel extends StateNotifier<ClockUiState> {
  final TimetableRepository _timetableRepository;

  late Timer _timer;
  late Timetable _timeTable;

  ClockViewModel(this._timetableRepository) : super(ClockUiState.empty()) {
    _timeTable = weekDayTimetable;
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    state = weekDayTimetable.toClockUiState(now: clock.now());
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
        if ((now.second % 60) == 0) {
          // minの変わり目は、全体を再計算
          state = _timeTable.toClockUiState(now: now);
        } else {
          // それ以外はclockのみ再計算
          state = state.updateClockState(now: now);
        }
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
