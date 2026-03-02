import 'package:hey_mate_app/domain/mock/model/chat_room.dart';
import 'package:hey_mate_app/domain/mock/repository/chat_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class ChatRepositoryMock implements ChatRepository {
  ChatRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<ChatRoom> fetchRoom(String roomId) async {
    final data =
        await _loader.load('assets/mock/chat_room.json') as Map<String, dynamic>;
    return ChatRoom.fromJson(data);
  }
}
