// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calandar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalandarModel _$$_CalandarModelFromJson(Map<String, dynamic> json) =>
    _$_CalandarModel(
      year: json['year'] as int?,
      month: (json['month'] as List<dynamic>?)
          ?.map((e) => MonthModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalandarModelToJson(_$_CalandarModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
    };
