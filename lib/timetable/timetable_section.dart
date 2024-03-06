import 'package:flutter/material.dart';

import '../model/timetable.dart';

class TimetableSection extends StatelessWidget {
  final Timetable data;

  const TimetableSection(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.black),
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
