// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nature_care/module/home/model/productColor/product_color.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'brand') final String? brand,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'price') final String? price,
    @JsonKey(name: 'price_sign') final String? priceSign,
    @JsonKey(name: 'currency') final String? currency,
    @JsonKey(name: 'image_link') final String? imageLink,
    @JsonKey(name: 'product_link') final String? productLink,
    @JsonKey(name: 'website_link') final String? websiteLink,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'category') final String? category,
    @JsonKey(name: 'product_type') final String? productType,
    @JsonKey(name: 'tag_list') final List<String>? tagList,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'product_api_url') final String? productApiUrl,
    @JsonKey(name: 'api_featured_image') final String? apiFeaturedImage,
    @JsonKey(name: 'product_colors') final List<ProductColors>? productColors,
    final bool? isSelect,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
