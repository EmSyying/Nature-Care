// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestUserModel _$$_TestUserModelFromJson(Map<String, dynamic> json) =>
    _$_TestUserModel(
      id: json['id'] as int?,
      postId: json['post_id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_TestUserModelToJson(_$_TestUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
