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
    state = state.copyWith(
      remainingClock: _getRemainingTime(
        currentTime: now,
        target: targetTime,
      ),
    );
  }

  @override
  ClockUiState build() {
    // buildのタイミングがわからないので、これは安全？
    startTimer();
    var d = DateTime.now();
    return ClockUiState(
      timetable: weekDayTimetable,
      remainingClock: '00:00',
      timelines: weekDayTimetable.toTimelineState(
        // todo 10:30
        now: DateTime(d.year, d.month, d.day, 11, 30),
        numberOfResult: 4,
      ),
    );
  }
}

String _getRemainingTime({
  required DateTime currentTime,
  required DateTime target,
}) {
  Duration diff = target.difference(currentTime);
  int minutes = diff.inMinutes;
  int seconds = diff.inSeconds;
  if (seconds > 0) {
    // 分を2桁の0埋めでフォーマット
    String formattedMinutes = minutes.toString().padLeft(2, '0');
    // 秒を2桁の0埋めでフォーマット
    String formattedSeconds = (seconds % 60).toString().padLeft(2, '0');
    // フォーマットされた時間を結合して返す
    return '$formattedMinutes:$formattedSeconds';
  } else {
    return '';
  }
}

extension DateTimeExtension on DateTime {
  /// 'hh:mm分後'の文字列を生成する
  TimelineState toTimelineState(DateTime now) {
    String hours = hour.toString().padLeft(2, '0');
    String min = minute.toString().padLeft(2, '0');
    int remainingMin = now.difference(this).inMinutes % 60;
    String remainingTime = remainingMin.toString().padLeft(2, '0');
    return TimelineState(
      departureTime: '$hours:$min発',
      remainingTime: '$remainingTime分後',
    );
  }
}
