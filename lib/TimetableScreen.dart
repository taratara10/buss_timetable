import 'package:flutter/material.dart';

class TimetableRow {
  final int hour;
  final List<int> minute;

  TimetableRow(this.hour, this.minute);
}

class TimetableModel {
  final List<TimetableRow> rows;

  TimetableModel(this.rows);
}

var preview = TimetableModel([
  TimetableRow(1, [1, 2]),
]);

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
          const SizedBox(
            height: 50,
          ),
          const Text('時刻表'),
          Timetable(preview),
        ]),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  TimetableModel data;

  Timetable(this.data);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.black), // 枠線の設定
      columnWidths: const {
        0: FlexColumnWidth(1), // 列の幅の設定
        1: FlexColumnWidth(3),
      },
      children: List.generate(
        data.rows.length,
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
