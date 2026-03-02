// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      fromMe: json['fromMe'] as bool,
      text: json['text'] as String,
      sentAtIso: json['sentAtIso'] as String,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromMe': instance.fromMe,
      'text': instance.text,
      'sentAtIso': instance.sentAtIso,
    };
