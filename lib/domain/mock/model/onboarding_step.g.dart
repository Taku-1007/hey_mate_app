// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStepImpl _$$OnboardingStepImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingStepImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['imageUrl'] as String,
      primaryCta: json['primaryCta'] as String,
      secondaryCta: json['secondaryCta'] as String?,
    );

Map<String, dynamic> _$$OnboardingStepImplToJson(
  _$OnboardingStepImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'imageUrl': instance.imageUrl,
  'primaryCta': instance.primaryCta,
  'secondaryCta': instance.secondaryCta,
};
