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
  String get remainingClock => throw _privateConstructorUsedError;
  List<TimelineState> get timelines => throw _privateConstructorUsedError;

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
  $Res call({String remainingClock, List<TimelineState> timelines});
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
    Object? remainingClock = null,
    Object? timelines = null,
  }) {
    return _then(_value.copyWith(
      remainingClock: null == remainingClock
          ? _value.remainingClock
          : remainingClock // ignore: cast_nullable_to_non_nullable
              as String,
      timelines: null == timelines
          ? _value.timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
    ) as $Val);
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
  $Res call({String remainingClock, List<TimelineState> timelines});
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
    Object? remainingClock = null,
    Object? timelines = null,
  }) {
    return _then(_$ClockUiStateImpl(
      remainingClock: null == remainingClock
          ? _value.remainingClock
          : remainingClock // ignore: cast_nullable_to_non_nullable
              as String,
      timelines: null == timelines
          ? _value._timelines
          : timelines // ignore: cast_nullable_to_non_nullable
              as List<TimelineState>,
    ));
  }
}

/// @nodoc

class _$ClockUiStateImpl implements _ClockUiState {
  _$ClockUiStateImpl(
      {required this.remainingClock,
      required final List<TimelineState> timelines})
      : _timelines = timelines;

  @override
  final String remainingClock;
  final List<TimelineState> _timelines;
  @override
  List<TimelineState> get timelines {
    if (_timelines is EqualUnmodifiableListView) return _timelines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timelines);
  }

  @override
  String toString() {
    return 'ClockUiState(remainingClock: $remainingClock, timelines: $timelines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockUiStateImpl &&
            (identical(other.remainingClock, remainingClock) ||
                other.remainingClock == remainingClock) &&
            const DeepCollectionEquality()
                .equals(other._timelines, _timelines));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingClock,
      const DeepCollectionEquality().hash(_timelines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      __$$ClockUiStateImplCopyWithImpl<_$ClockUiStateImpl>(this, _$identity);
}

abstract class _ClockUiState implements ClockUiState {
  factory _ClockUiState(
      {required final String remainingClock,
      required final List<TimelineState> timelines}) = _$ClockUiStateImpl;

  @override
  String get remainingClock;
  @override
  List<TimelineState> get timelines;
  @override
  @JsonKey(ignore: true)
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
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
