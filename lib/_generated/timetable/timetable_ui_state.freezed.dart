// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../timetable/timetable_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimetableUiState {
  StationName get stationName => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  List<Timetable> get timetables => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableUiStateCopyWith<TimetableUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableUiStateCopyWith<$Res> {
  factory $TimetableUiStateCopyWith(
          TimetableUiState value, $Res Function(TimetableUiState) then) =
      _$TimetableUiStateCopyWithImpl<$Res, TimetableUiState>;
  @useResult
  $Res call(
      {StationName stationName, int pageIndex, List<Timetable> timetables});
}

/// @nodoc
class _$TimetableUiStateCopyWithImpl<$Res, $Val extends TimetableUiState>
    implements $TimetableUiStateCopyWith<$Res> {
  _$TimetableUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? pageIndex = null,
    Object? timetables = null,
  }) {
    return _then(_value.copyWith(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as StationName,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      timetables: null == timetables
          ? _value.timetables
          : timetables // ignore: cast_nullable_to_non_nullable
              as List<Timetable>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableUiStateImplCopyWith<$Res>
    implements $TimetableUiStateCopyWith<$Res> {
  factory _$$TimetableUiStateImplCopyWith(_$TimetableUiStateImpl value,
          $Res Function(_$TimetableUiStateImpl) then) =
      __$$TimetableUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StationName stationName, int pageIndex, List<Timetable> timetables});
}

/// @nodoc
class __$$TimetableUiStateImplCopyWithImpl<$Res>
    extends _$TimetableUiStateCopyWithImpl<$Res, _$TimetableUiStateImpl>
    implements _$$TimetableUiStateImplCopyWith<$Res> {
  __$$TimetableUiStateImplCopyWithImpl(_$TimetableUiStateImpl _value,
      $Res Function(_$TimetableUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? pageIndex = null,
    Object? timetables = null,
  }) {
    return _then(_$TimetableUiStateImpl(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as StationName,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      timetables: null == timetables
          ? _value._timetables
          : timetables // ignore: cast_nullable_to_non_nullable
              as List<Timetable>,
    ));
  }
}

/// @nodoc

class _$TimetableUiStateImpl implements _TimetableUiState {
  _$TimetableUiStateImpl(
      {required this.stationName,
      required this.pageIndex,
      required final List<Timetable> timetables})
      : _timetables = timetables;

  @override
  final StationName stationName;
  @override
  final int pageIndex;
  final List<Timetable> _timetables;
  @override
  List<Timetable> get timetables {
    if (_timetables is EqualUnmodifiableListView) return _timetables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timetables);
  }

  @override
  String toString() {
    return 'TimetableUiState(stationName: $stationName, pageIndex: $pageIndex, timetables: $timetables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableUiStateImpl &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            const DeepCollectionEquality()
                .equals(other._timetables, _timetables));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stationName, pageIndex,
      const DeepCollectionEquality().hash(_timetables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableUiStateImplCopyWith<_$TimetableUiStateImpl> get copyWith =>
      __$$TimetableUiStateImplCopyWithImpl<_$TimetableUiStateImpl>(
          this, _$identity);
}

abstract class _TimetableUiState implements TimetableUiState {
  factory _TimetableUiState(
      {required final StationName stationName,
      required final int pageIndex,
      required final List<Timetable> timetables}) = _$TimetableUiStateImpl;

  @override
  StationName get stationName;
  @override
  int get pageIndex;
  @override
  List<Timetable> get timetables;
  @override
  @JsonKey(ignore: true)
  _$$TimetableUiStateImplCopyWith<_$TimetableUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
