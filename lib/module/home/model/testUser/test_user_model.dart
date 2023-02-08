// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_user_model.freezed.dart';
part 'test_user_model.g.dart';

@freezed
class TestUserModel with _$TestUserModel {
  factory TestUserModel({
    final int? id,
    @JsonKey(name: 'post_id') final int? postId,
    final String? name,
    final String? email,
    final String? body,
  }) = _TestUserModel;

  factory TestUserModel.fromJson(Map<String, dynamic> json) =>
      _$TestUserModelFromJson(json);
}
