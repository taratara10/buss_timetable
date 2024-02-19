import 'package:buss_timetable/timetable/timetable_screen.dart';
import 'package:flutter/material.dart';

class ClockFooterSection extends StatelessWidget {
  const ClockFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle mediumButtonStyle = ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(16),
    );

    final ButtonStyle largeButtonStyle = ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(20),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TimetableRoute()),
            );
          },
          style: mediumButtonStyle,
          child: const Icon(Icons.view_timeline_outlined, size: 28),
        ),
        ElevatedButton(
          onPressed: () {},
          style: largeButtonStyle,
          child: const Icon(Icons.change_circle, size: 34),
        ),
        ElevatedButton(
          onPressed: () {},
          style: mediumButtonStyle,
          child: const Icon(Icons.settings, size: 28),
        ),
      ],
    );
  }
}
