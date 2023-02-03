// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      brand: json['brand'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      priceSign: json['price_sign'] as String?,
      currency: json['currency'] as String?,
      imageLink: json['image_link'] as String?,
      productLink: json['product_link'] as String?,
      websiteLink: json['website_link'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      productType: json['product_type'] as String?,
      tagList: (json['tag_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      productApiUrl: json['product_api_url'] as String?,
      apiFeaturedImage: json['api_featured_image'] as String?,
      productColors: (json['product_colors'] as List<dynamic>?)
          ?.map((e) => ProductColors.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSelect: json['isSelect'] as bool?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'price': instance.price,
      'price_sign': instance.priceSign,
      'currency': instance.currency,
      'image_link': instance.imageLink,
      'product_link': instance.productLink,
      'website_link': instance.websiteLink,
      'description': instance.description,
      'category': instance.category,
      'product_type': instance.productType,
      'tag_list': instance.tagList,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'product_api_url': instance.productApiUrl,
      'api_featured_image': instance.apiFeaturedImage,
      'product_colors': instance.productColors,
      'isSelect': instance.isSelect,
    };
