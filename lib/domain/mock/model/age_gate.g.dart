// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_gate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgeGateImpl _$$AgeGateImplFromJson(Map<String, dynamic> json) =>
    _$AgeGateImpl(
      title: json['title'] as String,
      question: json['question'] as String,
      description: json['description'] as String,
      primaryLabel: json['primaryLabel'] as String,
      secondaryLabel: json['secondaryLabel'] as String,
    );

Map<String, dynamic> _$$AgeGateImplToJson(_$AgeGateImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'question': instance.question,
      'description': instance.description,
      'primaryLabel': instance.primaryLabel,
      'secondaryLabel': instance.secondaryLabel,
    };
