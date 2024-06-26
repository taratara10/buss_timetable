import 'package:buss_timetable/domain/timetable_repository.dart';
import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:buss_timetable/repository/default_timetable_repository.dart';
import 'package:buss_timetable/timetable/timetable_ui_state.dart';
import 'package:clock/clock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableViewModelNotifierProvider =
    StateNotifierProvider.autoDispose<TimetableViewModel, TimetableUiState>(
        (ref) {
  return TimetableViewModel(ref.watch(timetableRepositoryProvider));
});

class TimetableViewModel extends StateNotifier<TimetableUiState> {
  final TimetableRepository _timetableRepository;

  TimetableViewModel(this._timetableRepository)
      : super(TimetableUiState.empty()) {
    _init();
  }

  void _init() {
    StationName current =
        _timetableRepository.getSelectedStationName() ?? StationName('田喜野井');
    List<Timetable> timetables = _timetableRepository
        .getTimetable(stationName: current)
        .getOrDefault(List.empty());
    state = TimetableUiState(
      stationName: current,
      pageIndex: _getPageIndex(timetables, clock),
      pageIndexLastUpdatedTime: 0,
      timetables: timetables,
    );
  }

  void updatePageIndex(int index) {
    int elapsedTime =
        (clock.now().millisecondsSinceEpoch - state.pageIndexLastUpdatedTime);
    // 2つ以上のページを遷移時にPageView#onChangedが発火してしまう
    // pageIndexを更新してから100ms以内の処理は意図しないイベントなので破棄する
    if (elapsedTime < 100) return;
    state = state.copyWith(
      pageIndex: index,
      pageIndexLastUpdatedTime: clock.now().millisecondsSinceEpoch,
    );
  }

  int _getPageIndex(List<Timetable> timetables, Clock clock) {
    // indexWhere returns -1 if condition is not found.
    int index = timetables.indexWhere((item) => item.dayType == clock.dayType);
    return (index >= 0) ? index : 0;
  }
}
