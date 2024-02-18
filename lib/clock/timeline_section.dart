import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_view_model.dart';

class TimelineSection extends ConsumerWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ClockUiState state = ref.watch(clockViewModelProvider);
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
