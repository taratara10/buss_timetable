import 'package:buss_timetable/model/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void navigateToTimetableRoute(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TimetableRoute()),
  );
}

class TimetableRoute extends StatelessWidget {
  const TimetableRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(children: [
            const SizedBox(height: 50),
            const Text('時刻表'),
            const SizedBox(height: 16),
            _TimetableSection(weekDayTimetable),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class _TopAppBar extends ConsumerWidget {
  _TopAppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
