// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';
part 'test_model.g.dart';

@freezed
class TestModel with _$TestModel {
  factory TestModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'brewery_type') String? breweryType,
    @JsonKey(name: '') String? street,
    @JsonKey(name: 'address_2') String? address2,
    @JsonKey(name: 'address_3') String? address3,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'county_province') String? countyProvince,
    @JsonKey(name: 'postal_code') String? postalCode,
    final String? country,
    final String? longitude,
    final String? latitude,
    final String? phone,
    @JsonKey(name: 'website_url') String? websiteUrl,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    final bool? isSelect,
  }) = _TestModel;

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      _$TestModelFromJson(json);
}
