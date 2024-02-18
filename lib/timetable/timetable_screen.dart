import 'package:buss_timetable/BussThemeData.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeTableScreen',
      theme: bussThemeData,
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
            TimetableWidget(weekDayTimetable),
          ]),
        ),
      ),
    );
  }
}

class TimetableWidget extends StatelessWidget {
  Timetable data;

  TimetableWidget(this.data, {super.key});

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

List<TableRow> generateRow(Timetable timetable) {
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
