// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleSlotImpl _$$ScheduleSlotImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleSlotImpl(
      dayOfWeek: json['dayOfWeek'] as String,
      morningAvailable: json['morningAvailable'] as bool,
      nightAvailable: json['nightAvailable'] as bool,
    );

Map<String, dynamic> _$$ScheduleSlotImplToJson(_$ScheduleSlotImpl instance) =>
    <String, dynamic>{
      'dayOfWeek': instance.dayOfWeek,
      'morningAvailable': instance.morningAvailable,
      'nightAvailable': instance.nightAvailable,
    };
