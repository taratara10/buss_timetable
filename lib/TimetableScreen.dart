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
      home: const _TimeTableContent(),
    );
  }
}

class _TimeTableContent extends StatelessWidget {
  const _TimeTableContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Text('時刻表'),
          Text('時刻表'),
          TimeTable(),
        ]),
      ),
    );
  }
}

class TimeTable extends StatelessWidget {
  TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.black), // 枠線の設定
      children: List.generate(
        user.length,
        (index) => TableRow(
          children: [
            Text(user[index]),
            Text("番号：$index"),
          ],
        ),
      ),
    );
  }

  var user = [
    "Taro",
    "Hanako",
    "Eri",
    "Koji",
  ];
}
