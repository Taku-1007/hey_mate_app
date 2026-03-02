// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchCardImpl _$$MatchCardImplFromJson(Map<String, dynamic> json) =>
    _$MatchCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      gym: json['gym'] as String,
      distanceKm: (json['distanceKm'] as num).toDouble(),
      lastLoginMinutes: (json['lastLoginMinutes'] as num).toInt(),
      trustScore: (json['trustScore'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      focusAreas:
          (json['focusAreas'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      benchKg: (json['benchKg'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      statusBadges:
          (json['statusBadges'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$MatchCardImplToJson(_$MatchCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'gym': instance.gym,
      'distanceKm': instance.distanceKm,
      'lastLoginMinutes': instance.lastLoginMinutes,
      'trustScore': instance.trustScore,
      'tags': instance.tags,
      'focusAreas': instance.focusAreas,
      'benchKg': instance.benchKg,
      'imageUrl': instance.imageUrl,
      'statusBadges': instance.statusBadges,
    };
