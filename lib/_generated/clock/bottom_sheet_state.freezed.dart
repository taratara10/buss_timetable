// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../clock/bottom_sheet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
