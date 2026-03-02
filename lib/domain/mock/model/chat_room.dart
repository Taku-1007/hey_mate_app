import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_message.dart';
import 'date_proposal.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required String roomId,
    required String participantName,
    required String participantAvatar,
    required bool isOnline,
    required bool gymShareEnabled,
    required bool scheduleShareEnabled,
    required bool detailShareEnabled,
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
    @Default(<DateProposal>[]) List<DateProposal> proposals,
    @Default(<String>[]) List<String> quickReplies,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
