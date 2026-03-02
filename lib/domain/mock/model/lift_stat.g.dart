// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lift_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiftStatImpl _$$LiftStatImplFromJson(Map<String, dynamic> json) =>
    _$LiftStatImpl(
      label: json['label'] as String,
      valueKg: (json['valueKg'] as num).toInt(),
      maxKg: (json['maxKg'] as num).toInt(),
    );

Map<String, dynamic> _$$LiftStatImplToJson(_$LiftStatImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'valueKg': instance.valueKg,
      'maxKg': instance.maxKg,
    };
