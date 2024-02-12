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
      const Duration(milliseconds: 500),
      // 第二引数 callback
      (timer) {
        // 現在時刻を取得
        DateTime currentTime = DateTime.now();
        state = state.copyWith(
          remainingClock: remainingTime(
            currentTime: currentTime,
            target: DateTime.now().add(Duration(minutes: timer.tick)),
          ),
        );
        print('Timer tick ${timer.tick}// $currentTime');
      },
    );
  }

  void cancelTimer() {
    _timer.cancel();
  }

  // void updateTime() {
  //   state.
  // }

  String remainingTime({
    required DateTime currentTime,
    required DateTime target,
  }) {
    Duration diff = target.difference(currentTime);
    int minutes = diff.inMinutes;
    int seconds = diff.inSeconds;
    print('min $minutes .. sec $seconds');
    if (minutes > 0) {
      // 分を2桁の0埋めでフォーマット
      String formattedMinutes = minutes.toString().padLeft(2, '0');
      // 秒を2桁の0埋めでフォーマット
      String formattedSeconds = seconds.toString().padLeft(2, '0');
      // フォーマットされた時間を結合して返す
      return '$formattedMinutes:$formattedSeconds';
    } else {
      return '';
    }
  }

  @override
  ClockUiState build() {
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    return ClockUiState(
      timetable: weekDayTimetable,
      remainingClock: '00:00',
    );
  }

  @override
  void dispose() {}
}
