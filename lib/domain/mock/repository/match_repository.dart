import 'package:hey_mate_app/domain/mock/model/match_list_item.dart';

abstract class MatchRepository {
  Future<List<MatchListItem>> fetchMatches();
}
