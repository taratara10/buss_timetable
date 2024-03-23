import 'package:buss_timetable/clock/clock_footer_section.dart';
import 'package:buss_timetable/clock/timeline_section.dart';
import 'package:flutter/material.dart';

import 'clock_card_section.dart';

class ClockRoute extends StatelessWidget {
  const ClockRoute({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: TimelineSection(),
              ),
              Expanded(child: SizedBox()),
              ClockFooterSection(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
