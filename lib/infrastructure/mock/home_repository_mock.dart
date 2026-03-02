import 'package:hey_mate_app/domain/mock/model/match_card.dart';
import 'package:hey_mate_app/domain/mock/repository/home_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class HomeRepositoryMock implements HomeRepository {
  HomeRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<List<MatchCard>> fetchCards() async {
    final data =
        await _loader.load('assets/mock/home_cards.json') as List<dynamic>;
    return data
        .map((e) => MatchCard.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}
