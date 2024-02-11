import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'clock_ui_state.dart';

part 'clock_view_model.g.dart';

@riverpod
class ClockViewModel extends _$ClockViewModel {
  @override
  ClockUiState build() {
    return const ClockUiState(
      minutes: 5,
    );
  }
}
