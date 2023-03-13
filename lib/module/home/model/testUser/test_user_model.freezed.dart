// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestUserModel _$TestUserModelFromJson(Map<String, dynamic> json) {
  return _TestUserModel.fromJson(json);
}

/// @nodoc
mixin _$TestUserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int? get postId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestUserModelCopyWith<TestUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestUserModelCopyWith<$Res> {
  factory $TestUserModelCopyWith(
          TestUserModel value, $Res Function(TestUserModel) then) =
      _$TestUserModelCopyWithImpl<$Res, TestUserModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'post_id') int? postId,
      String? name,
      String? email,
      String? body,
      int? qty});
}

/// @nodoc
class _$TestUserModelCopyWithImpl<$Res, $Val extends TestUserModel>
    implements $TestUserModelCopyWith<$Res> {
  _$TestUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestUserModelCopyWith<$Res>
    implements $TestUserModelCopyWith<$Res> {
  factory _$$_TestUserModelCopyWith(
          _$_TestUserModel value, $Res Function(_$_TestUserModel) then) =
      __$$_TestUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'post_id') int? postId,
      String? name,
      String? email,
      String? body,
      int? qty});
}

/// @nodoc
class __$$_TestUserModelCopyWithImpl<$Res>
    extends _$TestUserModelCopyWithImpl<$Res, _$_TestUserModel>
    implements _$$_TestUserModelCopyWith<$Res> {
  __$$_TestUserModelCopyWithImpl(
      _$_TestUserModel _value, $Res Function(_$_TestUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$_TestUserModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestUserModel implements _TestUserModel {
  _$_TestUserModel(
      {this.id,
      @JsonKey(name: 'post_id') this.postId,
      this.name,
      this.email,
      this.body,
      this.qty});

  factory _$_TestUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_TestUserModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'post_id')
  final int? postId;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? body;
  @override
  final int? qty;

  @override
  String toString() {
    return 'TestUserModel(id: $id, postId: $postId, name: $name, email: $email, body: $body, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, postId, name, email, body, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestUserModelCopyWith<_$_TestUserModel> get copyWith =>
      __$$_TestUserModelCopyWithImpl<_$_TestUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestUserModelToJson(
      this,
    );
  }
}

abstract class _TestUserModel implements TestUserModel {
  factory _TestUserModel(
      {final int? id,
      @JsonKey(name: 'post_id') final int? postId,
      final String? name,
      final String? email,
      final String? body,
      final int? qty}) = _$_TestUserModel;

  factory _TestUserModel.fromJson(Map<String, dynamic> json) =
      _$_TestUserModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'post_id')
  int? get postId;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get body;
  @override
  int? get qty;
  @override
  @JsonKey(ignore: true)
  _$$_TestUserModelCopyWith<_$_TestUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
