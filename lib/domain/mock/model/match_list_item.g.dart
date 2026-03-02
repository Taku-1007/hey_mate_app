// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchListItemImpl _$$MatchListItemImplFromJson(Map<String, dynamic> json) =>
    _$MatchListItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      distanceKm: (json['distanceKm'] as num).toDouble(),
      gym: json['gym'] as String,
      lastLoginMinutes: (json['lastLoginMinutes'] as num).toInt(),
      trustScore: (json['trustScore'] as num).toInt(),
      avatarUrl: json['avatarUrl'] as String,
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$$MatchListItemImplToJson(_$MatchListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'distanceKm': instance.distanceKm,
      'gym': instance.gym,
      'lastLoginMinutes': instance.lastLoginMinutes,
      'trustScore': instance.trustScore,
      'avatarUrl': instance.avatarUrl,
      'isOnline': instance.isOnline,
    };
