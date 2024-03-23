// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../clock/clock_bottom_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClockBottomSheetState {
  StationName get selectedStation => throw _privateConstructorUsedError;
  List<StationName> get stations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClockBottomSheetStateCopyWith<ClockBottomSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockBottomSheetStateCopyWith<$Res> {
  factory $ClockBottomSheetStateCopyWith(ClockBottomSheetState value,
          $Res Function(ClockBottomSheetState) then) =
      _$ClockBottomSheetStateCopyWithImpl<$Res, ClockBottomSheetState>;
  @useResult
  $Res call({StationName selectedStation, List<StationName> stations});
}

/// @nodoc
class _$ClockBottomSheetStateCopyWithImpl<$Res,
        $Val extends ClockBottomSheetState>
    implements $ClockBottomSheetStateCopyWith<$Res> {
  _$ClockBottomSheetStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ClockBottomSheetStateImplCopyWith<$Res>
    implements $ClockBottomSheetStateCopyWith<$Res> {
  factory _$$ClockBottomSheetStateImplCopyWith(
          _$ClockBottomSheetStateImpl value,
          $Res Function(_$ClockBottomSheetStateImpl) then) =
      __$$ClockBottomSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StationName selectedStation, List<StationName> stations});
}

/// @nodoc
class __$$ClockBottomSheetStateImplCopyWithImpl<$Res>
    extends _$ClockBottomSheetStateCopyWithImpl<$Res,
        _$ClockBottomSheetStateImpl>
    implements _$$ClockBottomSheetStateImplCopyWith<$Res> {
  __$$ClockBottomSheetStateImplCopyWithImpl(_$ClockBottomSheetStateImpl _value,
      $Res Function(_$ClockBottomSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedStation = null,
    Object? stations = null,
  }) {
    return _then(_$ClockBottomSheetStateImpl(
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

class _$ClockBottomSheetStateImpl implements _ClockBottomSheetState {
  _$ClockBottomSheetStateImpl(
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
    return 'ClockBottomSheetState(selectedStation: $selectedStation, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockBottomSheetStateImpl &&
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
  _$$ClockBottomSheetStateImplCopyWith<_$ClockBottomSheetStateImpl>
      get copyWith => __$$ClockBottomSheetStateImplCopyWithImpl<
          _$ClockBottomSheetStateImpl>(this, _$identity);
}

abstract class _ClockBottomSheetState implements ClockBottomSheetState {
  factory _ClockBottomSheetState(
      {required final StationName selectedStation,
      required final List<StationName> stations}) = _$ClockBottomSheetStateImpl;

  @override
  StationName get selectedStation;
  @override
  List<StationName> get stations;
  @override
  @JsonKey(ignore: true)
  _$$ClockBottomSheetStateImplCopyWith<_$ClockBottomSheetStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
