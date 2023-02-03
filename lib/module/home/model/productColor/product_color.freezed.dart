// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductColors _$ProductColorsFromJson(Map<String, dynamic> json) {
  return _ProductColors.fromJson(json);
}

/// @nodoc
mixin _$ProductColors {
  @JsonKey(name: 'hex_value')
  String? get hexValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'colour_name')
  String? get colourName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductColorsCopyWith<ProductColors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColorsCopyWith<$Res> {
  factory $ProductColorsCopyWith(
          ProductColors value, $Res Function(ProductColors) then) =
      _$ProductColorsCopyWithImpl<$Res, ProductColors>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hex_value') String? hexValue,
      @JsonKey(name: 'colour_name') String? colourName});
}

/// @nodoc
class _$ProductColorsCopyWithImpl<$Res, $Val extends ProductColors>
    implements $ProductColorsCopyWith<$Res> {
  _$ProductColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hexValue = freezed,
    Object? colourName = freezed,
  }) {
    return _then(_value.copyWith(
      hexValue: freezed == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String?,
      colourName: freezed == colourName
          ? _value.colourName
          : colourName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductColorsCopyWith<$Res>
    implements $ProductColorsCopyWith<$Res> {
  factory _$$_ProductColorsCopyWith(
          _$_ProductColors value, $Res Function(_$_ProductColors) then) =
      __$$_ProductColorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hex_value') String? hexValue,
      @JsonKey(name: 'colour_name') String? colourName});
}

/// @nodoc
class __$$_ProductColorsCopyWithImpl<$Res>
    extends _$ProductColorsCopyWithImpl<$Res, _$_ProductColors>
    implements _$$_ProductColorsCopyWith<$Res> {
  __$$_ProductColorsCopyWithImpl(
      _$_ProductColors _value, $Res Function(_$_ProductColors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hexValue = freezed,
    Object? colourName = freezed,
  }) {
    return _then(_$_ProductColors(
      hexValue: freezed == hexValue
          ? _value.hexValue
          : hexValue // ignore: cast_nullable_to_non_nullable
              as String?,
      colourName: freezed == colourName
          ? _value.colourName
          : colourName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductColors implements _ProductColors {
  _$_ProductColors(
      {@JsonKey(name: 'hex_value') this.hexValue,
      @JsonKey(name: 'colour_name') this.colourName});

  factory _$_ProductColors.fromJson(Map<String, dynamic> json) =>
      _$$_ProductColorsFromJson(json);

  @override
  @JsonKey(name: 'hex_value')
  final String? hexValue;
  @override
  @JsonKey(name: 'colour_name')
  final String? colourName;

  @override
  String toString() {
    return 'ProductColors(hexValue: $hexValue, colourName: $colourName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductColors &&
            (identical(other.hexValue, hexValue) ||
                other.hexValue == hexValue) &&
            (identical(other.colourName, colourName) ||
                other.colourName == colourName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hexValue, colourName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductColorsCopyWith<_$_ProductColors> get copyWith =>
      __$$_ProductColorsCopyWithImpl<_$_ProductColors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductColorsToJson(
      this,
    );
  }
}

abstract class _ProductColors implements ProductColors {
  factory _ProductColors(
          {@JsonKey(name: 'hex_value') final String? hexValue,
          @JsonKey(name: 'colour_name') final String? colourName}) =
      _$_ProductColors;

  factory _ProductColors.fromJson(Map<String, dynamic> json) =
      _$_ProductColors.fromJson;

  @override
  @JsonKey(name: 'hex_value')
  String? get hexValue;
  @override
  @JsonKey(name: 'colour_name')
  String? get colourName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductColorsCopyWith<_$_ProductColors> get copyWith =>
      throw _privateConstructorUsedError;
}
