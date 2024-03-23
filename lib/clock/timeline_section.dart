import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:buss_timetable/extension/int_extenstion.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'clock_view_model.dart';
part '../_generated/clock/timeline_section.freezed.dart';

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
  /// @see clock_ui_state_test.dart
  List<TimelineState> toTimelineState({
    /// 直近何件の時刻表を表示するか
    required int numberOfResult,
    required DateTime now,
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

class TimelineSection extends ConsumerWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ClockUiState state = ref.watch(clockViewModelNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '次のバス',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        _TimelineItem(
          state: state.timelines,
          index: 0,
        )
      ],
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final List<TimelineState> state;
  final int index;

  const _TimelineItem({
    required this.state,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    TimelineState? current = state.elementAtOrNull(index);
    TimelineState? next = state.elementAtOrNull(index + 1);
    return (current != null)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _VerticalBussLine(isActive: (index == 0)), // todo 動的に変化させたい
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2),
                  _BussTimeInfo(state: current),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: (next != null)
                        ? _TimelineItem(
                            state: state,
                            index: index + 1,
                          )
                        : const SizedBox(),
                  ),
                ],
              )
            ],
          )
        : const SizedBox();
  }
}

/// 発車時刻と残り時間
class _BussTimeInfo extends StatelessWidget {
  final TimelineState state;

  const _BussTimeInfo({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          state.departureTime,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          state.remainingTime,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

/// ◯----- のような縦のタイムライン
class _VerticalBussLine extends StatelessWidget {
  final bool isActive;

  const _VerticalBussLine({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 32,
          height: 32,
          child: CustomPaint(
            painter: _DonutCirclePainter(
              color: (isActive) ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
        ),
        Container(
          width: 2, // 線の幅
          height: 200, //todo 可変にしたい
          color: Colors.grey.withOpacity(0.5), // 線の色
        ),
      ],
    );
  }
}

/// ドーナツ状のリング
class _DonutCirclePainter extends CustomPainter {
  final Color color;

  const _DonutCirclePainter({required this.color});

  @override
  void paint(Canvas canvas, size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;
    const thickness = 3.0;

    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness;
    canvas.drawCircle(center, radius, paint);
    final double innerRadius = radius - thickness / 2;
    final Paint innerPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness;

    canvas.drawCircle(center, innerRadius, innerPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
