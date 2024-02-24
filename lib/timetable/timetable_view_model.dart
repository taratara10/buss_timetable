import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/timetable/timetable_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timetable_view_model.g.dart';

@riverpod
class TimetableViewModel extends _$TimetableViewModel {
  // late Timetable _timeTable;

  @override
  TimetableUiState build() {
    return TimetableUiState(
      stationName: "田喜野井",
      timetables: [
        weekDayTimetable,
        holidayTimetable,
      ],
    );
  }
}
