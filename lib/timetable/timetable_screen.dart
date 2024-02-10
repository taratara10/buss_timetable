import 'package:flutter/material.dart';

class TimetableRow {
  final int hour;
  final List<int> minute;

  TimetableRow(this.hour, this.minute);
}

class TimetableModel {
  final List<TimetableRow> rows;
  final Day day = Day.weekday;

  TimetableModel(this.rows);
}

enum Day {
  weekday,
  saturday,
  holiday,
}

TimetableModel preview = TimetableModel([
  TimetableRow(6, [00, 15, 35, 55]),
  TimetableRow(7, [10, 27, 47]),
  TimetableRow(8, [06, 26, 46]),
  TimetableRow(9, [10, 20]),
  TimetableRow(10, [10, 20]),
  TimetableRow(11, [10, 20]),
  TimetableRow(12, [10, 20]),
  TimetableRow(13, [10, 20]),
  TimetableRow(14, [10, 20]),
  TimetableRow(15, [10, 20]),
  TimetableRow(16, [10, 20]),
  TimetableRow(17, [10, 20]),
  TimetableRow(18, [10, 20]),
  TimetableRow(19, [10, 20]),
  TimetableRow(20, [10, 20]),
  TimetableRow(21, [10, 20]),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(children: [
            const SizedBox(height: 50),
            const Text('時刻表'),
            const SizedBox(height: 16),
            Timetable(preview),
          ]),
        ),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  TimetableModel data;

  Timetable(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.black), // 枠線の設定
      columnWidths: const {
        0: FlexColumnWidth(1), // 列の幅の設定
        1: FlexColumnWidth(5),
      },
      children: generateRow(data),
    );
  }
}

List<TableRow> generateRow(TimetableModel timetable) {
  return timetable.rows
      .map(
        (row) => TableRow(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.blueGrey.shade50,
              child: Text(row.hour.toString()),
            ),
            Row(
              children: row.minute
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(item.toString().padLeft(2, '0')),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      )
      .toList();
}
