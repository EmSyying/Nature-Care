// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthModel _$MonthModelFromJson(Map<String, dynamic> json) {
  return _MonthModel.fromJson(json);
}

/// @nodoc
mixin _$MonthModel {
  String? get name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthModelCopyWith<MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthModelCopyWith<$Res> {
  factory $MonthModelCopyWith(
          MonthModel value, $Res Function(MonthModel) then) =
      _$MonthModelCopyWithImpl<$Res, MonthModel>;
  @useResult
  $Res call({String? name, String? date});
}

/// @nodoc
class _$MonthModelCopyWithImpl<$Res, $Val extends MonthModel>
    implements $MonthModelCopyWith<$Res> {
  _$MonthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthModelCopyWith<$Res>
    implements $MonthModelCopyWith<$Res> {
  factory _$$_MonthModelCopyWith(
          _$_MonthModel value, $Res Function(_$_MonthModel) then) =
      __$$_MonthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? date});
}

/// @nodoc
class __$$_MonthModelCopyWithImpl<$Res>
    extends _$MonthModelCopyWithImpl<$Res, _$_MonthModel>
    implements _$$_MonthModelCopyWith<$Res> {
  __$$_MonthModelCopyWithImpl(
      _$_MonthModel _value, $Res Function(_$_MonthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_MonthModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonthModel implements _MonthModel {
  _$_MonthModel({this.name, this.date});

  factory _$_MonthModel.fromJson(Map<String, dynamic> json) =>
      _$$_MonthModelFromJson(json);

  @override
  final String? name;
  @override
  final String? date;

  @override
  String toString() {
    return 'MonthModel(name: $name, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthModelCopyWith<_$_MonthModel> get copyWith =>
      __$$_MonthModelCopyWithImpl<_$_MonthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthModelToJson(
      this,
    );
  }
}

abstract class _MonthModel implements MonthModel {
  factory _MonthModel({final String? name, final String? date}) = _$_MonthModel;

  factory _MonthModel.fromJson(Map<String, dynamic> json) =
      _$_MonthModel.fromJson;

  @override
  String? get name;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_MonthModelCopyWith<_$_MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
