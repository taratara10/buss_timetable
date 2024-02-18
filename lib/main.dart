import 'package:buss_timetable/BussThemeData.dart';
import 'package:buss_timetable/clock/clock_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: BussApp()));
}

class BussApp extends StatelessWidget {
  const BussApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bussThemeData,
      home: const ClockRoute(),
    );
  }
}
