// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycFlowImpl _$$KycFlowImplFromJson(Map<String, dynamic> json) =>
    _$KycFlowImpl(
      steps:
          (json['steps'] as List<dynamic>?)
              ?.map((e) => KycStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <KycStep>[],
      nearbyGyms:
          (json['nearbyGyms'] as List<dynamic>?)
              ?.map((e) => GymSuggestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GymSuggestion>[],
    );

Map<String, dynamic> _$$KycFlowImplToJson(_$KycFlowImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'nearbyGyms': instance.nearbyGyms,
    };
