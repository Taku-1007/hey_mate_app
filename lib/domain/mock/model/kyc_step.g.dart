// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycStepImpl _$$KycStepImplFromJson(Map<String, dynamic> json) =>
    _$KycStepImpl(
      index: (json['index'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      tips:
          (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$KycStepImplToJson(_$KycStepImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'title': instance.title,
      'description': instance.description,
      'tips': instance.tips,
    };
