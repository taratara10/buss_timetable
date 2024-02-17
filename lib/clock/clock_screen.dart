import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:buss_timetable/clock/clock_view_model.dart';
import 'package:buss_timetable/clock/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClockScreen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _ClockContent(),
    );
  }

// todo disposeでTimerを開放する
}

class _ClockContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ClockUiState state = ref.watch(clockViewModelProvider);
    // todo
    var a = state.timelines.firstOrNull;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              ClockCard(),
              const SizedBox(height: 32),
              const Text(
                '次のバス',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 32),
              if (a != null) Timeline(state: a),
            ],
          ),
        ),
      ),
    );
  }
}

class ClockCard extends ConsumerWidget {
  ClockCard({super.key});

  String a = 'aaa';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(clockViewModelProvider.notifier);
    final ClockUiState state = ref.watch(clockViewModelProvider);
    final String min = state.remainingClock;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black45, width: 2),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('12:30発まで'),
              Text(
                '$min',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_upward,
            size: 50,
          )
        ],
      ),
    );
  }
}
