// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClockUiState {
  DayType get dayType => throw _privateConstructorUsedError;

  /// 現在選択中のstationとdayTypeに一致する時刻表
  Timetable? get timetable => throw _privateConstructorUsedError;
  ClockState get clockState => throw _privateConstructorUsedError;
  List<TimelineState> get timelines => throw _privateConstructorUsedError;
  BottomSheetState get bottomSheetState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClockUiStateCopyWith<ClockUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockUiStateCopyWith<$Res> {
  factory $ClockUiStateCopyWith(
          ClockUiState value, $Res Function(ClockUiState) then) =
      _$ClockUiStateCopyWithImpl<$Res, ClockUiState>;
  @useResult
  $Res call(
      {DayType dayType,
      Timetable? timetable,
      ClockState clockState,
      List<TimelineState> timelines,
      BottomSheetState bottomSheetState});

  $ClockStateCopyWith<$Res> get clockState;
  $BottomSheetStateCopyWith<$Res> get bottomSheetState;
}

/// @nodoc
class _$ClockUiStateCopyWithImpl<$Res, $Val extends ClockUiState>
    implements $ClockUiStateCopyWith<$Res> {
  _$ClockUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayType = null,
    Object? timetable = freezed,
    Object? clockState = null,
    Object? timelines = null,
    Object? bottomSheetState = null,
  }) {
    return _then(_value.copyWith(
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      timetable: freezed == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Timetable?,
      clockState: null == clockState
          ? _value.clockState
          : clockState // ignore: cast_nullable_to_non_nullable
              as ClockState,
      timelines: null == timelines
          ? _value.timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
      bottomSheetState: null == bottomSheetState
          ? _value.bottomSheetState
          : bottomSheetState // ignore: cast_nullable_to_non_nullable
              as BottomSheetState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClockStateCopyWith<$Res> get clockState {
    return $ClockStateCopyWith<$Res>(_value.clockState, (value) {
      return _then(_value.copyWith(clockState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BottomSheetStateCopyWith<$Res> get bottomSheetState {
    return $BottomSheetStateCopyWith<$Res>(_value.bottomSheetState, (value) {
      return _then(_value.copyWith(bottomSheetState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClockUiStateImplCopyWith<$Res>
    implements $ClockUiStateCopyWith<$Res> {
  factory _$$ClockUiStateImplCopyWith(
          _$ClockUiStateImpl value, $Res Function(_$ClockUiStateImpl) then) =
      __$$ClockUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DayType dayType,
      Timetable? timetable,
      ClockState clockState,
      List<TimelineState> timelines,
      BottomSheetState bottomSheetState});

  @override
  $ClockStateCopyWith<$Res> get clockState;
  @override
  $BottomSheetStateCopyWith<$Res> get bottomSheetState;
}

/// @nodoc
class __$$ClockUiStateImplCopyWithImpl<$Res>
    extends _$ClockUiStateCopyWithImpl<$Res, _$ClockUiStateImpl>
    implements _$$ClockUiStateImplCopyWith<$Res> {
  __$$ClockUiStateImplCopyWithImpl(
      _$ClockUiStateImpl _value, $Res Function(_$ClockUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayType = null,
    Object? timetable = freezed,
    Object? clockState = null,
    Object? timelines = null,
    Object? bottomSheetState = null,
  }) {
    return _then(_$ClockUiStateImpl(
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      timetable: freezed == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Timetable?,
      clockState: null == clockState
          ? _value.clockState
          : clockState // ignore: cast_nullable_to_non_nullable
              as ClockState,
      timelines: null == timelines
          ? _value._timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
      bottomSheetState: null == bottomSheetState
          ? _value.bottomSheetState
          : bottomSheetState // ignore: cast_nullable_to_non_nullable
              as BottomSheetState,
    ));
  }
}

/// @nodoc

class _$ClockUiStateImpl implements _ClockUiState {
  _$ClockUiStateImpl(
      {required this.dayType,
      required this.timetable,
      required this.clockState,
      required final List<TimelineState> timelines,
      required this.bottomSheetState})
      : _timelines = timelines;

  @override
  final DayType dayType;

  /// 現在選択中のstationとdayTypeに一致する時刻表
  @override
  final Timetable? timetable;
  @override
  final ClockState clockState;
  final List<TimelineState> _timelines;
  @override
  List<TimelineState> get timelines {
    if (_timelines is EqualUnmodifiableListView) return _timelines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timelines);
  }

  @override
  final BottomSheetState bottomSheetState;

  @override
  String toString() {
    return 'ClockUiState(dayType: $dayType, timetable: $timetable, clockState: $clockState, timelines: $timelines, bottomSheetState: $bottomSheetState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockUiStateImpl &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            (identical(other.timetable, timetable) ||
                other.timetable == timetable) &&
            (identical(other.clockState, clockState) ||
                other.clockState == clockState) &&
            const DeepCollectionEquality()
                .equals(other._timelines, _timelines) &&
            (identical(other.bottomSheetState, bottomSheetState) ||
                other.bottomSheetState == bottomSheetState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayType, timetable, clockState,
      const DeepCollectionEquality().hash(_timelines), bottomSheetState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      __$$ClockUiStateImplCopyWithImpl<_$ClockUiStateImpl>(this, _$identity);
}

abstract class _ClockUiState implements ClockUiState {
  factory _ClockUiState(
      {required final DayType dayType,
      required final Timetable? timetable,
      required final ClockState clockState,
      required final List<TimelineState> timelines,
      required final BottomSheetState bottomSheetState}) = _$ClockUiStateImpl;

  @override
  DayType get dayType;
  @override

  /// 現在選択中のstationとdayTypeに一致する時刻表
  Timetable? get timetable;
  @override
  ClockState get clockState;
  @override
  List<TimelineState> get timelines;
  @override
  BottomSheetState get bottomSheetState;
  @override
  @JsonKey(ignore: true)
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClockState {
  /// hh:mm発まで
  String get departureTime => throw _privateConstructorUsedError;

  /// format: mm:ss
  String get remainingClock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClockStateCopyWith<ClockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockStateCopyWith<$Res> {
  factory $ClockStateCopyWith(
          ClockState value, $Res Function(ClockState) then) =
      _$ClockStateCopyWithImpl<$Res, ClockState>;
  @useResult
  $Res call({String departureTime, String remainingClock});
}

/// @nodoc
class _$ClockStateCopyWithImpl<$Res, $Val extends ClockState>
    implements $ClockStateCopyWith<$Res> {
  _$ClockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? remainingClock = null,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainingClock: null == remainingClock
          ? _value.remainingClock
          : remainingClock // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClockStateImplCopyWith<$Res>
    implements $ClockStateCopyWith<$Res> {
  factory _$$ClockStateImplCopyWith(
          _$ClockStateImpl value, $Res Function(_$ClockStateImpl) then) =
      __$$ClockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String departureTime, String remainingClock});
}

/// @nodoc
class __$$ClockStateImplCopyWithImpl<$Res>
    extends _$ClockStateCopyWithImpl<$Res, _$ClockStateImpl>
    implements _$$ClockStateImplCopyWith<$Res> {
  __$$ClockStateImplCopyWithImpl(
      _$ClockStateImpl _value, $Res Function(_$ClockStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? remainingClock = null,
  }) {
    return _then(_$ClockStateImpl(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainingClock: null == remainingClock
          ? _value.remainingClock
          : remainingClock // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClockStateImpl implements _ClockState {
  _$ClockStateImpl({required this.departureTime, required this.remainingClock});

  /// hh:mm発まで
  @override
  final String departureTime;

  /// format: mm:ss
  @override
  final String remainingClock;

  @override
  String toString() {
    return 'ClockState(departureTime: $departureTime, remainingClock: $remainingClock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockStateImpl &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.remainingClock, remainingClock) ||
                other.remainingClock == remainingClock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departureTime, remainingClock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockStateImplCopyWith<_$ClockStateImpl> get copyWith =>
      __$$ClockStateImplCopyWithImpl<_$ClockStateImpl>(this, _$identity);
}

abstract class _ClockState implements ClockState {
  factory _ClockState(
      {required final String departureTime,
      required final String remainingClock}) = _$ClockStateImpl;

  @override

  /// hh:mm発まで
  String get departureTime;
  @override

  /// format: mm:ss
  String get remainingClock;
  @override
  @JsonKey(ignore: true)
  _$$ClockStateImplCopyWith<_$ClockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomSheetState {
  StationName get selectedStation => throw _privateConstructorUsedError;
  List<StationName> get stations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomSheetStateCopyWith<BottomSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetStateCopyWith<$Res> {
  factory $BottomSheetStateCopyWith(
          BottomSheetState value, $Res Function(BottomSheetState) then) =
      _$BottomSheetStateCopyWithImpl<$Res, BottomSheetState>;
  @useResult
  $Res call({StationName selectedStation, List<StationName> stations});
}

/// @nodoc
class _$BottomSheetStateCopyWithImpl<$Res, $Val extends BottomSheetState>
    implements $BottomSheetStateCopyWith<$Res> {
  _$BottomSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedStation = null,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      selectedStation: null == selectedStation
          ? _value.selectedStation
          : selectedStation // ignore: cast_nullable_to_non_nullable
              as StationName,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationName>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomSheetStateImplCopyWith<$Res>
    implements $BottomSheetStateCopyWith<$Res> {
  factory _$$BottomSheetStateImplCopyWith(_$BottomSheetStateImpl value,
          $Res Function(_$BottomSheetStateImpl) then) =
      __$$BottomSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StationName selectedStation, List<StationName> stations});
}

/// @nodoc
class __$$BottomSheetStateImplCopyWithImpl<$Res>
    extends _$BottomSheetStateCopyWithImpl<$Res, _$BottomSheetStateImpl>
    implements _$$BottomSheetStateImplCopyWith<$Res> {
  __$$BottomSheetStateImplCopyWithImpl(_$BottomSheetStateImpl _value,
      $Res Function(_$BottomSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedStation = null,
    Object? stations = null,
  }) {
    return _then(_$BottomSheetStateImpl(
      selectedStation: null == selectedStation
          ? _value.selectedStation
          : selectedStation // ignore: cast_nullable_to_non_nullable
              as StationName,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationName>,
    ));
  }
}

/// @nodoc

class _$BottomSheetStateImpl implements _BottomSheetState {
  _$BottomSheetStateImpl(
      {required this.selectedStation,
      required final List<StationName> stations})
      : _stations = stations;

  @override
  final StationName selectedStation;
  final List<StationName> _stations;
  @override
  List<StationName> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'BottomSheetState(selectedStation: $selectedStation, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomSheetStateImpl &&
            (identical(other.selectedStation, selectedStation) ||
                other.selectedStation == selectedStation) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedStation,
      const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomSheetStateImplCopyWith<_$BottomSheetStateImpl> get copyWith =>
      __$$BottomSheetStateImplCopyWithImpl<_$BottomSheetStateImpl>(
          this, _$identity);
}

abstract class _BottomSheetState implements BottomSheetState {
  factory _BottomSheetState(
      {required final StationName selectedStation,
      required final List<StationName> stations}) = _$BottomSheetStateImpl;

  @override
  StationName get selectedStation;
  @override
  List<StationName> get stations;
  @override
  @JsonKey(ignore: true)
  _$$BottomSheetStateImplCopyWith<_$BottomSheetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimelineState {
  /// 出発時刻
  DateTime get departure => throw _privateConstructorUsedError;

  /// format: hh:mm発
  String get departureTime => throw _privateConstructorUsedError;

  /// format: m分後 || h時間m分後
  String get remainingTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineStateCopyWith<TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res, TimelineState>;
  @useResult
  $Res call({DateTime departure, String departureTime, String remainingTime});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res, $Val extends TimelineState>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? departureTime = null,
    Object? remainingTime = null,
  }) {
    return _then(_value.copyWith(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineStateImplCopyWith<$Res>
    implements $TimelineStateCopyWith<$Res> {
  factory _$$TimelineStateImplCopyWith(
          _$TimelineStateImpl value, $Res Function(_$TimelineStateImpl) then) =
      __$$TimelineStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime departure, String departureTime, String remainingTime});
}

/// @nodoc
class __$$TimelineStateImplCopyWithImpl<$Res>
    extends _$TimelineStateCopyWithImpl<$Res, _$TimelineStateImpl>
    implements _$$TimelineStateImplCopyWith<$Res> {
  __$$TimelineStateImplCopyWithImpl(
      _$TimelineStateImpl _value, $Res Function(_$TimelineStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? departureTime = null,
    Object? remainingTime = null,
  }) {
    return _then(_$TimelineStateImpl(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimelineStateImpl implements _TimelineState {
  _$TimelineStateImpl(
      {required this.departure,
      required this.departureTime,
      required this.remainingTime});

  /// 出発時刻
  @override
  final DateTime departure;

  /// format: hh:mm発
  @override
  final String departureTime;

  /// format: m分後 || h時間m分後
  @override
  final String remainingTime;

  @override
  String toString() {
    return 'TimelineState(departure: $departure, departureTime: $departureTime, remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineStateImpl &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departure, departureTime, remainingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineStateImplCopyWith<_$TimelineStateImpl> get copyWith =>
      __$$TimelineStateImplCopyWithImpl<_$TimelineStateImpl>(this, _$identity);
}

abstract class _TimelineState implements TimelineState {
  factory _TimelineState(
      {required final DateTime departure,
      required final String departureTime,
      required final String remainingTime}) = _$TimelineStateImpl;

  @override

  /// 出発時刻
  DateTime get departure;
  @override

  /// format: hh:mm発
  String get departureTime;
  @override

  /// format: m分後 || h時間m分後
  String get remainingTime;
  @override
  @JsonKey(ignore: true)
  _$$TimelineStateImplCopyWith<_$TimelineStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
