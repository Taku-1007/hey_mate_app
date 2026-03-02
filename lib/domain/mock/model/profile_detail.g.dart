// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDetailImpl _$$ProfileDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDetailImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      location: json['location'] as String,
      gym: json['gym'] as String,
      verified: json['verified'] as bool,
      trustScore: (json['trustScore'] as num).toInt(),
      scoreText: json['scoreText'] as String,
      trainingHistory: json['trainingHistory'] as String,
      specialty: json['specialty'] as String,
      lifts:
          (json['lifts'] as List<dynamic>?)
              ?.map((e) => LiftStat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LiftStat>[],
      schedule:
          (json['schedule'] as List<dynamic>?)
              ?.map((e) => ScheduleSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ScheduleSlot>[],
      reviews:
          (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Review>[],
      bio: json['bio'] as String,
      badges:
          (json['badges'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$ProfileDetailImplToJson(_$ProfileDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'location': instance.location,
      'gym': instance.gym,
      'verified': instance.verified,
      'trustScore': instance.trustScore,
      'scoreText': instance.scoreText,
      'trainingHistory': instance.trainingHistory,
      'specialty': instance.specialty,
      'lifts': instance.lifts,
      'schedule': instance.schedule,
      'reviews': instance.reviews,
      'bio': instance.bio,
      'badges': instance.badges,
    };
