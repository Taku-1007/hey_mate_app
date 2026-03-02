// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthdate_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthdateFlowImpl _$$BirthdateFlowImplFromJson(Map<String, dynamic> json) =>
    _$BirthdateFlowImpl(
      currentStep: (json['currentStep'] as num).toInt(),
      totalSteps: (json['totalSteps'] as num).toInt(),
      years:
          (json['years'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      months:
          (json['months'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      days:
          (json['days'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
    );

Map<String, dynamic> _$$BirthdateFlowImplToJson(_$BirthdateFlowImpl instance) =>
    <String, dynamic>{
      'currentStep': instance.currentStep,
      'totalSteps': instance.totalSteps,
      'years': instance.years,
      'months': instance.months,
      'days': instance.days,
    };
