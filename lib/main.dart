import 'package:buss_timetable/BussThemeData.dart';
import 'package:buss_timetable/clock/clock_screen.dart';
import 'package:buss_timetable/timetable/timetable_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ClockScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: bussThemeData,
      home: const TimeTableScreen(),
    );
  }
}
