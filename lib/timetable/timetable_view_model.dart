import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/timetable/timetable_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timetable_view_model.g.dart';

@riverpod
class TimetableViewModel extends _$TimetableViewModel {
  // late Timetable _timeTable;

  @override
  TimetableUiState build() {
    // todo 動的に取得する
    return TimetableUiState(
      stationName: "田喜野井",
      pageIndex: 0,
      timetables: [
        weekDayTimetable,
        Timetable(
          rows: holidayTimetable.rows,
          dayType: DayType.saturday,
        ),
        holidayTimetable,
      ],
    );
  }

  void updatePageIndex(int index) {
    state = state.copyWith(pageIndex: index);
  }
}
