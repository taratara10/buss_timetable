import 'package:buss_timetable/model/station_name.dart';

import 'day_type.dart';

/// 時刻表
class Timetable {
  final StationName stationName;
  final List<TimetableRow> rows;
  final DayType dayType;

  Timetable({
    required this.stationName,
    required this.rows,
    required this.dayType,
  });
}

class TimetableRow {
  final int hour;
  final List<int> minute;

  TimetableRow({required this.hour, required this.minute});
}

Timetable weekDayTimetable = Timetable(
  stationName: StationName("田喜野井"),
  rows: [
    TimetableRow(hour: 6, minute: [00, 15, 35, 55]),
    TimetableRow(hour: 7, minute: [10, 27, 47]),
    TimetableRow(hour: 8, minute: [06, 26, 46]),
    TimetableRow(hour: 9, minute: [15, 45]),
    TimetableRow(hour: 10, minute: [08, 38]),
    TimetableRow(hour: 11, minute: [08, 38]),
    TimetableRow(hour: 12, minute: [08, 38]),
    TimetableRow(hour: 13, minute: [08, 38]),
    TimetableRow(hour: 14, minute: [08, 38]),
    TimetableRow(hour: 15, minute: [08, 38]),
    TimetableRow(hour: 16, minute: [08, 38]),
    TimetableRow(hour: 17, minute: [08, 38]),
    TimetableRow(hour: 18, minute: [08, 38]),
    TimetableRow(hour: 19, minute: [15, 44]),
    TimetableRow(hour: 20, minute: [16, 52]),
    TimetableRow(hour: 21, minute: [49]),
  ],
  dayType: DayType.weekday,
);

Timetable holidayTimetable = Timetable(
  stationName: StationName("田喜野井"),
  rows: [
    TimetableRow(hour: 6, minute: [02, 32]),
    TimetableRow(hour: 7, minute: [02, 32, 55]),
    TimetableRow(hour: 8, minute: [15, 40]),
    TimetableRow(hour: 9, minute: [10, 40]),
    TimetableRow(hour: 10, minute: [16, 43]),
    TimetableRow(hour: 11, minute: [02, 33]),
    TimetableRow(hour: 12, minute: [02, 33]),
    TimetableRow(hour: 13, minute: [04, 34]),
    TimetableRow(hour: 14, minute: [04, 34]),
    TimetableRow(hour: 15, minute: [04, 34]),
    TimetableRow(hour: 16, minute: [04, 34]),
    TimetableRow(hour: 17, minute: [04, 34]),
    TimetableRow(hour: 18, minute: [04, 38]),
    TimetableRow(hour: 19, minute: [08, 38]),
    TimetableRow(hour: 20, minute: [11, 42]),
    TimetableRow(hour: 21, minute: [12, 42]),
    TimetableRow(hour: 22, minute: [12]),
  ],
  dayType: DayType.holiday,
);
