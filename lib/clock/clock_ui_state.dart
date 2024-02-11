import 'package:buss_timetable/model/timetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_ui_state.freezed.dart';

/// 下記のコマンドで生成
/// `dart run build_runner build`
@freezed
class ClockUiState with _$ClockUiState {
  // todo constで生成することでimmutableにしたい
  factory ClockUiState({
    required Timetable timetable,
  }) = _ClockUiState;
}
