import 'package:buss_timetable/model/station_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../_generated/clock/bottom_sheet_state.freezed.dart';

@freezed
class BottomSheetState with _$BottomSheetState {
  factory BottomSheetState({
    required StationName selectedStation,
    required List<StationName> stations,
  }) = _BottomSheetState;
}
