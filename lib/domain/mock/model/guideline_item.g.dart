// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guideline_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuidelineItemImpl _$$GuidelineItemImplFromJson(Map<String, dynamic> json) =>
    _$GuidelineItemImpl(
      id: json['id'] as String,
      icon: json['icon'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      colorHex: json['colorHex'] as String,
    );

Map<String, dynamic> _$$GuidelineItemImplToJson(_$GuidelineItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'title': instance.title,
      'description': instance.description,
      'colorHex': instance.colorHex,
    };
