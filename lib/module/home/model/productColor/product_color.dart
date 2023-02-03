// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_color.freezed.dart';
part 'product_color.g.dart';

@freezed
class ProductColors with _$ProductColors {
  factory ProductColors({
    @JsonKey(name: 'hex_value') final String? hexValue,
    @JsonKey(name: 'colour_name') final String? colourName,
  }) = _ProductColors;

  factory ProductColors.fromJson(Map<String, dynamic> json) =>
      _$ProductColorsFromJson(json);
}
