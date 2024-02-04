
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'TimeTableScreen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TimeTableContent() ,
    );
  }
}

class TimeTableContent extends StatelessWidget {
  const TimeTableContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('時刻表')
      ),
    );
  }
}
