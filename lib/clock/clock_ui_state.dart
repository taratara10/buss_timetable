import 'package:buss_timetable/clock/timeline_section.dart';
import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'clock_bottom_sheet.dart';
import 'clock_card_section.dart';

part '../_generated/clock/clock_ui_state.freezed.dart';

@freezed
class ClockUiState with _$ClockUiState {
  factory ClockUiState({
    required DayType dayType,

    /// 現在選択中のstationとdayTypeに一致する時刻表
    required Timetable? timetable,
    required ClockCardState clockCardState,
    required List<TimelineState> timelines,
    required ClockBottomSheetState bottomSheetState,
  }) = _ClockUiState;

  factory ClockUiState.empty() {
    return ClockUiState(
      dayType: DayType.weekday,
      timetable: null,
      clockCardState: ClockCardState.empty(),
      timelines: [],
      bottomSheetState: ClockBottomSheetState(
        selectedStation: StationName(""),
        stations: [],
      ),
    );
  }
}
