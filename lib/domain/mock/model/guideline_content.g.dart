// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guideline_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuidelineContentImpl _$$GuidelineContentImplFromJson(
  Map<String, dynamic> json,
) => _$GuidelineContentImpl(
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  agreeLabel: json['agreeLabel'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => GuidelineItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <GuidelineItem>[],
);

Map<String, dynamic> _$$GuidelineContentImplToJson(
  _$GuidelineContentImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'agreeLabel': instance.agreeLabel,
  'items': instance.items,
};
