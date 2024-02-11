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
  Timetable get timetable => throw _privateConstructorUsedError;

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
  $Res call({Timetable timetable});
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
    Object? timetable = null,
  }) {
    return _then(_value.copyWith(
      timetable: null == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Timetable,
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
  $Res call({Timetable timetable});
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
    Object? timetable = null,
  }) {
    return _then(_$ClockUiStateImpl(
      timetable: null == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Timetable,
    ));
  }
}

/// @nodoc

class _$ClockUiStateImpl implements _ClockUiState {
  const _$ClockUiStateImpl({required this.timetable});

  @override
  final Timetable timetable;

  @override
  String toString() {
    return 'ClockUiState(timetable: $timetable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockUiStateImpl &&
            (identical(other.timetable, timetable) ||
                other.timetable == timetable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timetable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      __$$ClockUiStateImplCopyWithImpl<_$ClockUiStateImpl>(this, _$identity);
}

abstract class _ClockUiState implements ClockUiState {
  const factory _ClockUiState({required final Timetable timetable}) =
      _$ClockUiStateImpl;

  @override
  Timetable get timetable;
  @override
  @JsonKey(ignore: true)
  _$$ClockUiStateImplCopyWith<_$ClockUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
