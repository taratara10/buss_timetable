import 'package:buss_timetable/extension/int_extenstion.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_ui_state.freezed.dart';

/// 下記のコマンドで生成
/// `dart run build_runner build`
@freezed
class ClockUiState with _$ClockUiState {
  factory ClockUiState({
    required ClockState clockState,
    required List<TimelineState> timelines,
  }) = _ClockUiState;
}

@freezed
class ClockState with _$ClockState {
  factory ClockState({
    /// hh:mm発まで
    required String departureTime,

    /// format: mm:ss
    required String remainingClock,
  }) = _ClockState;

  factory ClockState.empty() {
    return ClockState(
      departureTime: '',
      remainingClock: '',
    );
  }
}

@freezed
class StationItem with _$StationItem {
  factory StationItem({
    required bool isSelected,
    required String name,
  }) = _StationItem;
}

@freezed
class TimelineState with _$TimelineState {
  factory TimelineState({
    /// 出発時刻
    required DateTime departure,

    /// format: hh:mm発
    required String departureTime,

    /// format: m分後 || h時間m分後
    required String remainingTime,
  }) = _TimelineState;
}

extension TimetableExtension on Timetable {
  ClockUiState toClockUiState({required DateTime now}) {
    // 直近4本の時刻を取得
    return ClockUiState(
      clockState: ClockState.empty(),
      timelines: toTimelineState(
        now: now,
        numberOfResult: 4,
      ),
    ).updateClockState(now: now);
  }

  /// @see clock_ui_state_test.dart
  List<TimelineState> toTimelineState({
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

    Duration duration = target.difference(now);
    int diffMin = duration.inMinutes % 60;
    int diffHour = duration.inHours;

    String remainingTime = (diffHour <= 0)
        ? '${diffMin.toString()}分後'
        : '${diffHour.toString()}時間${diffMin.toString()}分後';
    return TimelineState(
      departure: target,
      departureTime: '${targetHour.toTwoDigit()}:${targetMin.toTwoDigit()}発',
      remainingTime: remainingTime,
    );
  }
}

extension ClockUiStateExtension on ClockUiState {
  ClockUiState updateClockState({
    required DateTime now,
  }) {
    TimelineState? next = timelines.firstOrNull;
    if (next != null) {
      return copyWith(
        clockState: ClockState(
          departureTime: '${next.departureTime}まで',
          remainingClock: _getRemainingTime(now: now, target: next.departure),
        ),
      );
    } else {
      // emptyのstateに切り替えるとかしたほうがいいかも MVI
      return this;
    }
  }

  /// 現在からtargetまでの時刻を'mm:ss'のフォーマットを返す
  String _getRemainingTime({
    required DateTime now,
    required DateTime target,
  }) {
    Duration diff = target.difference(now);
    int minutes = diff.inMinutes;
    int seconds = diff.inSeconds;
    if (seconds > 0) {
      // 分を2桁の0埋めでフォーマット
      String formattedMinutes = minutes.toTwoDigit();
      // 秒を2桁の0埋めでフォーマット
      String formattedSeconds = (seconds % 60).toTwoDigit();
      // フォーマットされた時間を結合して返す
      return '$formattedMinutes:$formattedSeconds';
    } else {
      // todo
      return 'このバスは出発済みです';
    }
  }
}
