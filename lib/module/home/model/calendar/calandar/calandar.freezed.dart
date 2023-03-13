// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calandar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalandarModel _$CalandarModelFromJson(Map<String, dynamic> json) {
  return _CalandarModel.fromJson(json);
}

/// @nodoc
mixin _$CalandarModel {
  int? get year => throw _privateConstructorUsedError;
  List<MonthModel>? get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalandarModelCopyWith<CalandarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalandarModelCopyWith<$Res> {
  factory $CalandarModelCopyWith(
          CalandarModel value, $Res Function(CalandarModel) then) =
      _$CalandarModelCopyWithImpl<$Res, CalandarModel>;
  @useResult
  $Res call({int? year, List<MonthModel>? month});
}

/// @nodoc
class _$CalandarModelCopyWithImpl<$Res, $Val extends CalandarModel>
    implements $CalandarModelCopyWith<$Res> {
  _$CalandarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<MonthModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalandarModelCopyWith<$Res>
    implements $CalandarModelCopyWith<$Res> {
  factory _$$_CalandarModelCopyWith(
          _$_CalandarModel value, $Res Function(_$_CalandarModel) then) =
      __$$_CalandarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? year, List<MonthModel>? month});
}

/// @nodoc
class __$$_CalandarModelCopyWithImpl<$Res>
    extends _$CalandarModelCopyWithImpl<$Res, _$_CalandarModel>
    implements _$$_CalandarModelCopyWith<$Res> {
  __$$_CalandarModelCopyWithImpl(
      _$_CalandarModel _value, $Res Function(_$_CalandarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_$_CalandarModel(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value._month
          : month // ignore: cast_nullable_to_non_nullable
              as List<MonthModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalandarModel implements _CalandarModel {
  _$_CalandarModel({this.year, final List<MonthModel>? month}) : _month = month;

  factory _$_CalandarModel.fromJson(Map<String, dynamic> json) =>
      _$$_CalandarModelFromJson(json);

  @override
  final int? year;
  final List<MonthModel>? _month;
  @override
  List<MonthModel>? get month {
    final value = _month;
    if (value == null) return null;
    if (_month is EqualUnmodifiableListView) return _month;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CalandarModel(year: $year, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalandarModel &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._month, _month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, year, const DeepCollectionEquality().hash(_month));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalandarModelCopyWith<_$_CalandarModel> get copyWith =>
      __$$_CalandarModelCopyWithImpl<_$_CalandarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalandarModelToJson(
      this,
    );
  }
}

abstract class _CalandarModel implements CalandarModel {
  factory _CalandarModel({final int? year, final List<MonthModel>? month}) =
      _$_CalandarModel;

  factory _CalandarModel.fromJson(Map<String, dynamic> json) =
      _$_CalandarModel.fromJson;

  @override
  int? get year;
  @override
  List<MonthModel>? get month;
  @override
  @JsonKey(ignore: true)
  _$$_CalandarModelCopyWith<_$_CalandarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
