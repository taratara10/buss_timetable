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
