import 'package:buss_timetable/model/station_name.dart';
import 'package:result_dart/result_dart.dart';

import '../model/timetable.dart';

abstract interface class TimetableRepository {
  Result<List<Timetable>, Exception> getTimetable(
      {required StationName stationName});
}
