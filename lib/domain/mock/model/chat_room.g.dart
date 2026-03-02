// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      roomId: json['roomId'] as String,
      participantName: json['participantName'] as String,
      participantAvatar: json['participantAvatar'] as String,
      isOnline: json['isOnline'] as bool,
      gymShareEnabled: json['gymShareEnabled'] as bool,
      scheduleShareEnabled: json['scheduleShareEnabled'] as bool,
      detailShareEnabled: json['detailShareEnabled'] as bool,
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatMessage>[],
      proposals:
          (json['proposals'] as List<dynamic>?)
              ?.map((e) => DateProposal.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DateProposal>[],
      quickReplies:
          (json['quickReplies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'participantName': instance.participantName,
      'participantAvatar': instance.participantAvatar,
      'isOnline': instance.isOnline,
      'gymShareEnabled': instance.gymShareEnabled,
      'scheduleShareEnabled': instance.scheduleShareEnabled,
      'detailShareEnabled': instance.detailShareEnabled,
      'messages': instance.messages,
      'proposals': instance.proposals,
      'quickReplies': instance.quickReplies,
    };
