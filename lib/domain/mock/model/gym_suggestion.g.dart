// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GymSuggestionImpl _$$GymSuggestionImplFromJson(Map<String, dynamic> json) =>
    _$GymSuggestionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      distanceKm: (json['distanceKm'] as num).toDouble(),
    );

Map<String, dynamic> _$$GymSuggestionImplToJson(_$GymSuggestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'distanceKm': instance.distanceKm,
    };
