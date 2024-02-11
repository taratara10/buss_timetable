import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_ui_state.freezed.dart';

/// 下記のコマンドで生成
/// `dart run build_runner build`
@freezed
class ClockUiState with _$ClockUiState {
  // constで生成することでimmutableにする
  const factory ClockUiState({
    required int minutes,
  }) = _ClockUiState;
}
