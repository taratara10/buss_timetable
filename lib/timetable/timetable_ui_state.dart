import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../_generated/timetable/timetable_ui_state.freezed.dart';

@freezed
class TimetableUiState with _$TimetableUiState {
  factory TimetableUiState({
    required StationName stationName,
    required int pageIndex,
    required List<Timetable> timetables,
  }) = _TimetableUiState;

  factory TimetableUiState.empty() {
    return TimetableUiState(
      stationName: StationName(''),
      pageIndex: 0,
      timetables: List.empty(),
    );
  }
}
