import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_ui_state.freezed.dart';

@freezed
class TimetableUiState with _$TimetableUiState {
  factory TimetableUiState({
    required String stationName,
    required int pageIndex,
    required List<Timetable> timetables,
  }) = _TimetableUiState;
}
