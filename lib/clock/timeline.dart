import 'dart:math' as math;

import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final TimelineState state;

  const Timeline({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return _TimelineItem(state: state);
  }
}

class _TimelineItem extends StatelessWidget {
  final TimelineState state;

  const _TimelineItem({required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _VerticalBussLine(),
        _BussTimeInfo(state: state),
      ],
    );
  }
}

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
          height: 100,
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
