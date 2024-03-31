import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/repository/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/src/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

final timetableRepositoryProvider = Provider<TimetableRepository>(
  (ref) => DefaultTimetableRepository(ref.watch(sharedPreferencesProvider)),
);

class DefaultTimetableRepository implements TimetableRepository {
  DefaultTimetableRepository(this.sharedPref);

  final SharedPreferences sharedPref;

  @override
  Result<List<Timetable>, Exception> getTimetable({
    required StationName stationName,
  }) {
    switch (stationName.value) {
      case "田喜野井":
        return Success(_takinoi);
      case "津田沼_津08":
        return Success(_tsudanuma);
      default:
        return Failure(Exception("Not found"));
    }
  }

  @override
  StationName? getSelectedStationName() {
    String? name = sharedPref.getString(PreferenceKey.selectedStationName.name);
    return (name != null) ? StationName(name) : null;
  }

  @override
  void updateSelectedStationName({required StationName stationName}) {
    sharedPref.setString(
      PreferenceKey.selectedStationName.name,
      stationName.value,
    );
  }
}

List<Timetable> _takinoi = [
  Timetable(
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
  ),
  Timetable(
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
    dayType: DayType.saturday,
  ),
  Timetable(
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
  ),
];

List<Timetable> _tsudanuma = [
  Timetable(
    stationName: StationName("津田沼_津08"),
    rows: [
      TimetableRow(hour: 6, minute: [25, 42, 58]),
      TimetableRow(hour: 7, minute: [27, 42]),
      TimetableRow(hour: 8, minute: [03, 22, 41]),
      TimetableRow(hour: 9, minute: [01, 22, 39, 59]),
      TimetableRow(hour: 10, minute: [18, 48]),
      TimetableRow(hour: 11, minute: [15, 38]),
      TimetableRow(hour: 12, minute: [08, 38]),
      TimetableRow(hour: 13, minute: [08, 38]),
      TimetableRow(hour: 14, minute: [08, 38]),
      TimetableRow(hour: 15, minute: [08, 38]),
      TimetableRow(hour: 16, minute: [09, 39]),
      TimetableRow(hour: 17, minute: [09, 39]),
      TimetableRow(hour: 18, minute: [09, 39]),
      TimetableRow(hour: 19, minute: [09, 39]),
      TimetableRow(hour: 20, minute: [09, 39]),
      TimetableRow(hour: 21, minute: [16, 45]),
      TimetableRow(hour: 22, minute: [10]),
    ],
    dayType: DayType.weekday,
  ),
  Timetable(
    stationName: StationName("津田沼_津08"),
    rows: [
      TimetableRow(hour: 6, minute: [23, 57]),
      TimetableRow(hour: 7, minute: [28, 58]),
      TimetableRow(hour: 8, minute: [21, 41]),
      TimetableRow(hour: 9, minute: [08, 38]),
      TimetableRow(hour: 10, minute: [18, 51]),
      TimetableRow(hour: 11, minute: [15, 35]),
      TimetableRow(hour: 12, minute: [05, 35]),
      TimetableRow(hour: 13, minute: [05, 35]),
      TimetableRow(hour: 14, minute: [05, 35]),
      TimetableRow(hour: 15, minute: [05, 35]),
      TimetableRow(hour: 16, minute: [05, 35]),
      TimetableRow(hour: 17, minute: [05, 35]),
      TimetableRow(hour: 18, minute: [05, 35]),
      TimetableRow(hour: 19, minute: [05, 35]),
      TimetableRow(hour: 20, minute: [05, 38]),
      TimetableRow(hour: 21, minute: [05, 38]),
      TimetableRow(hour: 22, minute: [08, 38]),
    ],
    dayType: DayType.saturday,
  ),
  Timetable(
    stationName: StationName("津田沼_津08"),
    rows: [
      TimetableRow(hour: 6, minute: [23, 57]),
      TimetableRow(hour: 7, minute: [28, 58]),
      TimetableRow(hour: 8, minute: [21, 41]),
      TimetableRow(hour: 9, minute: [08, 38]),
      TimetableRow(hour: 10, minute: [18, 51]),
      TimetableRow(hour: 11, minute: [15, 35]),
      TimetableRow(hour: 12, minute: [05, 35]),
      TimetableRow(hour: 13, minute: [05, 35]),
      TimetableRow(hour: 14, minute: [05, 35]),
      TimetableRow(hour: 15, minute: [05, 35]),
      TimetableRow(hour: 16, minute: [05, 35]),
      TimetableRow(hour: 17, minute: [05, 35]),
      TimetableRow(hour: 18, minute: [05, 35]),
      TimetableRow(hour: 19, minute: [05, 35]),
      TimetableRow(hour: 20, minute: [05, 38]),
      TimetableRow(hour: 21, minute: [05, 38]),
      TimetableRow(hour: 22, minute: [08, 38]),
    ],
    dayType: DayType.holiday,
  ),
];
