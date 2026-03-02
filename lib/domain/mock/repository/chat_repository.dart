import 'package:hey_mate_app/domain/mock/model/chat_room.dart';

abstract class ChatRepository {
  Future<ChatRoom> fetchRoom(String roomId);
}
