import 'package:hey_mate_app/domain/mock/model/match_card.dart';

abstract class HomeRepository {
  Future<List<MatchCard>> fetchCards();
}
