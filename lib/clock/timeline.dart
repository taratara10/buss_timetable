import 'dart:math' as math;

import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_view_model.dart';

class Timeline extends ConsumerWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ClockUiState state = ref.watch(clockViewModelProvider);
    return _TimelineItem(
      state: state.timelines,
      index: 0,
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
              const _VerticalBussLine(),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _BussTimeInfo(state: current),
                  const SizedBox(height: 16),
                  (next != null)
                      ? _TimelineItem(
                          state: state,
                          index: index + 1,
                        )
                      : const SizedBox()
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
          style: const TextStyle(fontSize: 18),
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
  const _VerticalBussLine();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: CustomPaint(
            painter: _DonutCirclePainter(),
          ),
        ),
        Container(
          width: 4, // 線の幅
          height: 300, //todo 可変にしたい
          color: Colors.blue, // 線の色
        ),
      ],
    );
  }
}

/// ドーナツ状のリング
class _DonutCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;
    const thickness = 3.0;

    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness;

    canvas.drawCircle(center, radius, paint);

    const double angle = math.pi / 4;
    final double x = center.dx + radius * math.cos(angle);
    final double y = center.dy + radius * math.sin(angle);

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
