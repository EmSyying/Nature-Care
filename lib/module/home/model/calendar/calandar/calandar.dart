import 'package:freezed_annotation/freezed_annotation.dart';

import '../month/month_model.dart';

part 'calandar.freezed.dart';
part 'calandar.g.dart';

@freezed
class CalandarModel with _$CalandarModel {
  factory CalandarModel({
    final int? year,
    final List<MonthModel>? month,
  }) = _CalandarModel;

  factory CalandarModel.fromJson(Map<String, dynamic> json) =>
      _$CalandarModelFromJson(json);
}
