// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: json['id'] as String,
  authorName: json['authorName'] as String,
  rating: (json['rating'] as num).toDouble(),
  text: json['text'] as String,
  postedAgoText: json['postedAgoText'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  avatarUrl: json['avatarUrl'] as String,
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorName': instance.authorName,
      'rating': instance.rating,
      'text': instance.text,
      'postedAgoText': instance.postedAgoText,
      'tags': instance.tags,
      'avatarUrl': instance.avatarUrl,
    };
