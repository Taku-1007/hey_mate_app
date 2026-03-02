import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_card.freezed.dart';
part 'match_card.g.dart';

@freezed
class MatchCard with _$MatchCard {
  const factory MatchCard({
    required String id,
    required String name,
    required int age,
    required String gym,
    required double distanceKm,
    required int lastLoginMinutes,
    required int trustScore,
    @Default(<String>[]) List<String> tags,
    @Default(<String>[]) List<String> focusAreas,
    required int benchKg,
    required String imageUrl,
    @Default(<String>[]) List<String> statusBadges,
  }) = _MatchCard;

  factory MatchCard.fromJson(Map<String, dynamic> json) =>
      _$MatchCardFromJson(json);
}
