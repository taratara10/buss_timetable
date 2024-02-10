import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_view_model.freezed.dart';

/// 下記のコマンドで生成
/// `dart run build_runner build`
@freezed
class ClockUiState with _$ClockUiState {
  const factory ClockUiState({
    required int minutes,
  }) = _ClockUiState;
}
