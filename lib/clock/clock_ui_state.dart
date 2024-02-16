import 'package:buss_timetable/extension/int_extenstion.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_ui_state.freezed.dart';

/// 下記のコマンドで生成
/// `dart run build_runner build`
@freezed
class ClockUiState with _$ClockUiState {
  // todo constで生成することでimmutableにしたい
  factory ClockUiState({
    required Timetable timetable,
    required String remainingClock,
    required List<TimelineState> timelines,
  }) = _ClockUiState;
}

@freezed
class TimelineState with _$TimelineState {
  factory TimelineState({
    required String departureTime,
    required String remainingTime,
  }) = _TimelineState;
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

extension TimetableExtension on Timetable {
  List<TimelineState> getTimelineState({
    required DateTime now,
    required int numberOfResult,
  }) {
    List<TimelineState> result = [];

    int currentHour = now.hour;
    int currentMinute = now.minute;

    for (TimetableRow row in rows) {
      // 必要な数取得したら終了
      if (result.length >= numberOfResult) break;

      // 現在時刻と同じhour
      if (row.hour == currentHour) {
        for (int min in row.minute) {
          // 現在時刻より未来のmin
          if (min >= currentMinute) {
            result.add(_createTimelineState(
              now: now,
              targetHour: row.hour,
              targetMin: min,
            ));
          }
        }
      }

      // 現在時刻より未来のhour
      if (row.hour > currentHour) {
        for (int min in row.minute) {
          // 未来の時刻を結果に詰める
          result.add(_createTimelineState(
            now: now,
            targetHour: row.hour,
            targetMin: min,
          ));
        }
      }
    }

    return result.take(numberOfResult).toList();
  }

  TimelineState _createTimelineState({
    required DateTime now,
    required int targetHour,
    required int targetMin,
  }) {
    DateTime target = DateTime(
      now.year,
      now.month,
      now.day,
      targetHour,
      targetMin,
    );

    Duration duration = now.difference(target);
    int diffMin = duration.inMinutes % 60;
    int diffHour = duration.inHours;

    return TimelineState(
      departureTime: '${targetHour.toTwoDigit()}:${targetMin.toTwoDigit()}発',
      remainingTime: '${diffHour.toTwoDigit()}時間${diffMin.toTwoDigit()}分後',
    );
  }
}
