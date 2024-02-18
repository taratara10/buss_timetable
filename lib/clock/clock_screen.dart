import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:buss_timetable/clock/clock_view_model.dart';
import 'package:buss_timetable/clock/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../BussThemeData.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClockScreen',
      theme: bussThemeData,
      home: _ClockContent(),
    );
  }
}

class _ClockContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              ClockCard(),
              SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '次のバス',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                    Timeline()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClockCard extends ConsumerWidget {
  const ClockCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(clockViewModelProvider.notifier);
    final ClockUiState state = ref.watch(clockViewModelProvider);
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
                state.clockState.departureTime,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                state.clockState.remainingClock,
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
