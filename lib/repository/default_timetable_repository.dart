import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:result_dart/src/result.dart';

class DefaultTimetableRepository implements TimetableRepository {
  @override
  Result<Timetable, Exception> getTimetable(
      {required StationName stationName}) {
    // TODO: implement getTimetable
    throw UnimplementedError();
  }
}
