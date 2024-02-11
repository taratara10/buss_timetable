import 'dart:async';

import 'package:buss_timetable/model/timetable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'clock_ui_state.dart';

part 'clock_view_model.g.dart';

@riverpod
class ClockViewModel extends _$ClockViewModel {
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(
      // 第一引数 実行間隔
      const Duration(milliseconds: 100),
      // 第二引数 callback
      (timer) {
        print('Timer tick ${timer.tick}');
      },
    );
  }

  void cancelTimer() {
    _timer.cancel();
  }

  // void updateTime() {
  //   state.
  // }

  @override
  ClockUiState build() {
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    return ClockUiState(
      timetable: weekDayTimetable,
    );
  }

  @override
  void dispose() {}
}
