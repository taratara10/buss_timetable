import 'dart:async';

import 'package:buss_timetable/model/timetable.dart';
import 'package:clock/clock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'clock_ui_state.dart';

part 'clock_view_model.g.dart';

@riverpod
class ClockViewModel extends _$ClockViewModel {
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(
      // 第一引数 実行間隔
      const Duration(milliseconds: 500),
      // 第二引数 callback
      (timer) {
        updateTime();
      },
    );
  }

  void cancelTimer() {
    _timer.cancel();
  }

  void updateTime() {
    // todo 固定値
    int targetHour = 12;
    int targetMinutes = 30;

    DateTime now = DateTime.now();
    DateTime targetTime = DateTime(
      now.year,
      now.month,
      now.day,
      targetHour,
      targetMinutes,
    );
    state = state.updateDepartureTime(now: clock.now());
  }

  @override
  ClockUiState build() {
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    return weekDayTimetable.toClockUiState(now: clock.now());
  }
}
