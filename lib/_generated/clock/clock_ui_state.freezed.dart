// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../clock/clock_ui_state.dart';

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
  ClockCardState get clockCardState => throw _privateConstructorUsedError;
  List<TimelineState> get timelines => throw _privateConstructorUsedError;
  ClockBottomSheetState get bottomSheetState =>
      throw _privateConstructorUsedError;

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
      ClockCardState clockCardState,
      List<TimelineState> timelines,
      ClockBottomSheetState bottomSheetState});

  $ClockCardStateCopyWith<$Res> get clockCardState;
  $ClockBottomSheetStateCopyWith<$Res> get bottomSheetState;
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
    Object? clockCardState = null,
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
      clockCardState: null == clockCardState
          ? _value.clockCardState
          : clockCardState // ignore: cast_nullable_to_non_nullable
              as ClockCardState,
      timelines: null == timelines
          ? _value.timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
      bottomSheetState: null == bottomSheetState
          ? _value.bottomSheetState
          : bottomSheetState // ignore: cast_nullable_to_non_nullable
              as ClockBottomSheetState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClockCardStateCopyWith<$Res> get clockCardState {
    return $ClockCardStateCopyWith<$Res>(_value.clockCardState, (value) {
      return _then(_value.copyWith(clockCardState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClockBottomSheetStateCopyWith<$Res> get bottomSheetState {
    return $ClockBottomSheetStateCopyWith<$Res>(_value.bottomSheetState,
        (value) {
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
      ClockCardState clockCardState,
      List<TimelineState> timelines,
      ClockBottomSheetState bottomSheetState});

  @override
  $ClockCardStateCopyWith<$Res> get clockCardState;
  @override
  $ClockBottomSheetStateCopyWith<$Res> get bottomSheetState;
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
    Object? clockCardState = null,
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
      clockCardState: null == clockCardState
          ? _value.clockCardState
          : clockCardState // ignore: cast_nullable_to_non_nullable
              as ClockCardState,
      timelines: null == timelines
          ? _value._timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
      bottomSheetState: null == bottomSheetState
          ? _value.bottomSheetState
          : bottomSheetState // ignore: cast_nullable_to_non_nullable
              as ClockBottomSheetState,
    ));
  }
}

/// @nodoc

class _$ClockUiStateImpl implements _ClockUiState {
  _$ClockUiStateImpl(
      {required this.dayType,
      required this.timetable,
      required this.clockCardState,
      required final List<TimelineState> timelines,
      required this.bottomSheetState})
      : _timelines = timelines;

  @override
  final DayType dayType;

  /// 現在選択中のstationとdayTypeに一致する時刻表
  @override
  final Timetable? timetable;
  @override
  final ClockCardState clockCardState;
  final List<TimelineState> _timelines;
  @override
  List<TimelineState> get timelines {
    if (_timelines is EqualUnmodifiableListView) return _timelines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timelines);
  }

  @override
  final ClockBottomSheetState bottomSheetState;

  @override
  String toString() {
    return 'ClockUiState(dayType: $dayType, timetable: $timetable, clockCardState: $clockCardState, timelines: $timelines, bottomSheetState: $bottomSheetState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockUiStateImpl &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            (identical(other.timetable, timetable) ||
                other.timetable == timetable) &&
            (identical(other.clockCardState, clockCardState) ||
                other.clockCardState == clockCardState) &&
            const DeepCollectionEquality()
                .equals(other._timelines, _timelines) &&
            (identical(other.bottomSheetState, bottomSheetState) ||
                other.bottomSheetState == bottomSheetState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dayType,
      timetable,
      clockCardState,
      const DeepCollectionEquality().hash(_timelines),
      bottomSheetState);

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
          required final ClockCardState clockCardState,
          required final List<TimelineState> timelines,
          required final ClockBottomSheetState bottomSheetState}) =
      _$ClockUiStateImpl;

  @override
  DayType get dayType;
  @override

  /// 現在選択中のstationとdayTypeに一致する時刻表
  Timetable? get timetable;
  @override
  ClockCardState get clockCardState;
  @override
  List<TimelineState> get timelines;
  @override
  ClockBottomSheetState get bottomSheetState;
  @override
  @JsonKey(ignore: true)
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
