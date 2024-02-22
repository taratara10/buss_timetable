import 'dart:async';

import 'package:buss_timetable/model/timetable.dart';
import 'package:clock/clock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'clock_ui_state.dart';

part 'clock_view_model.g.dart';

@riverpod
class ClockViewModel extends _$ClockViewModel {
  late Timer _timer;
  late Timetable _timeTable;

  @override
  ClockUiState build() {
    _timeTable = weekDayTimetable;
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    return weekDayTimetable.toClockUiState(now: clock.now());
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

  void onTap(String stationName) {
    // todo
    state = state.copyWith(
      bottomSheetState:
          state.bottomSheetState.copyWith(selectedStation: stationName),
    );
    print('--ss aaaa $stationName');
  }
}
