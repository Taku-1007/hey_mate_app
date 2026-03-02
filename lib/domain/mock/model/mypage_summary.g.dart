// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mypage_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MypageSummaryImpl _$$MypageSummaryImplFromJson(Map<String, dynamic> json) =>
    _$MypageSummaryImpl(
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      avatarUrl: json['avatarUrl'] as String,
      verified: json['verified'] as bool,
      premium: json['premium'] as bool,
      trustScore: (json['trustScore'] as num).toInt(),
      trustLabel: json['trustLabel'] as String,
      badges:
          (json['badges'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      menus:
          (json['menus'] as List<dynamic>?)
              ?.map((e) => MypageMenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MypageMenuItem>[],
      appVersion: json['appVersion'] as String,
    );

Map<String, dynamic> _$$MypageSummaryImplToJson(_$MypageSummaryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'avatarUrl': instance.avatarUrl,
      'verified': instance.verified,
      'premium': instance.premium,
      'trustScore': instance.trustScore,
      'trustLabel': instance.trustLabel,
      'badges': instance.badges,
      'menus': instance.menus,
      'appVersion': instance.appVersion,
    };
