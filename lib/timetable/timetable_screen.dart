import 'package:buss_timetable/buss_theme_data.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:flutter/material.dart';

class TimetableRoute extends StatelessWidget {
  const TimetableRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeTableScreen',
      theme: bussThemeData,
      home: const _TimetableScreen(),
    );
  }
}

class _TimetableScreen extends StatelessWidget {
  const _TimetableScreen();

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
    );
  }
}

class _TimetableSection extends StatelessWidget {
  Timetable data;

  _TimetableSection(this.data);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.black), // 枠線の設定
      columnWidths: const {
        0: FlexColumnWidth(1), // 列の幅の設定
        1: FlexColumnWidth(5),
      },
      children: _generateRow(data),
    );
  }
}

List<TableRow> _generateRow(Timetable timetable) {
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
