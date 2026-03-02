import 'package:hey_mate_app/domain/mock/model/match_list_item.dart';
import 'package:hey_mate_app/domain/mock/repository/match_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class MatchRepositoryMock implements MatchRepository {
  MatchRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<List<MatchListItem>> fetchMatches() async {
    final data =
        await _loader.load('assets/mock/matches.json') as List<dynamic>;
    return data
        .map((e) => MatchListItem.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}
