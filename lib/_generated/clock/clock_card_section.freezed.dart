// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../clock/clock_card_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClockCardState {
  /// hh:mm発まで
  String get departureTime => throw _privateConstructorUsedError;

  /// format: mm:ss
  String get remainingClock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClockCardStateCopyWith<ClockCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockCardStateCopyWith<$Res> {
  factory $ClockCardStateCopyWith(
          ClockCardState value, $Res Function(ClockCardState) then) =
      _$ClockCardStateCopyWithImpl<$Res, ClockCardState>;
  @useResult
  $Res call({String departureTime, String remainingClock});
}

/// @nodoc
class _$ClockCardStateCopyWithImpl<$Res, $Val extends ClockCardState>
    implements $ClockCardStateCopyWith<$Res> {
  _$ClockCardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ClockCardStateImplCopyWith<$Res>
    implements $ClockCardStateCopyWith<$Res> {
  factory _$$ClockCardStateImplCopyWith(_$ClockCardStateImpl value,
          $Res Function(_$ClockCardStateImpl) then) =
      __$$ClockCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String departureTime, String remainingClock});
}

/// @nodoc
class __$$ClockCardStateImplCopyWithImpl<$Res>
    extends _$ClockCardStateCopyWithImpl<$Res, _$ClockCardStateImpl>
    implements _$$ClockCardStateImplCopyWith<$Res> {
  __$$ClockCardStateImplCopyWithImpl(
      _$ClockCardStateImpl _value, $Res Function(_$ClockCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? remainingClock = null,
  }) {
    return _then(_$ClockCardStateImpl(
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

class _$ClockCardStateImpl implements _ClockCardState {
  _$ClockCardStateImpl(
      {required this.departureTime, required this.remainingClock});

  /// hh:mm発まで
  @override
  final String departureTime;

  /// format: mm:ss
  @override
  final String remainingClock;

  @override
  String toString() {
    return 'ClockCardState(departureTime: $departureTime, remainingClock: $remainingClock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockCardStateImpl &&
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
  _$$ClockCardStateImplCopyWith<_$ClockCardStateImpl> get copyWith =>
      __$$ClockCardStateImplCopyWithImpl<_$ClockCardStateImpl>(
          this, _$identity);
}

abstract class _ClockCardState implements ClockCardState {
  factory _ClockCardState(
      {required final String departureTime,
      required final String remainingClock}) = _$ClockCardStateImpl;

  @override

  /// hh:mm発まで
  String get departureTime;
  @override

  /// format: mm:ss
  String get remainingClock;
  @override
  @JsonKey(ignore: true)
  _$$ClockCardStateImplCopyWith<_$ClockCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
