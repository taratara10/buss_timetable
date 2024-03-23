import 'package:buss_timetable/clock/clock_view_model.dart';
import 'package:buss_timetable/clock/timeline_section.dart';
import 'package:buss_timetable/extension/int_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../_generated/clock/clock_card_section.freezed.dart';

@freezed
class ClockCardState with _$ClockCardState {
  factory ClockCardState({
    /// hh:mm発まで
    required String departureTime,

    /// format: mm:ss
    required String remainingClock,
  }) = _ClockCardState;

  factory ClockCardState.empty() {
    return ClockCardState(
      departureTime: '',
      remainingClock: '',
    );
  }

  factory ClockCardState.of({
    required TimelineState? nextTimeline,
    required DateTime now,
  }) {
    if (nextTimeline != null) {
      return ClockCardState(
        departureTime: '${nextTimeline.departureTime}まで',
        remainingClock: _getRemainingTime(
          now: now,
          target: nextTimeline.departure,
        ),
      );
    } else {
      return ClockCardState.empty();
    }
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

class ClockCardSection extends ConsumerWidget {
  const ClockCardSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(clockViewModelNotifierProvider.notifier);
    final ClockCardState state =
        ref.watch(clockViewModelNotifierProvider).clockCardState;
    // todo
    final autoDisposeProvider = Provider.autoDispose((ref) {
      ref.onDispose(() {
        viewModel.cancelTimer();
      });
    });

    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: 2),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.departureTime,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                state.remainingClock,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_upward,
            size: 50,
          )
        ],
      ),
    );
  }
}
