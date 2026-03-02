import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_list_item.freezed.dart';
part 'match_list_item.g.dart';

@freezed
class MatchListItem with _$MatchListItem {
  const factory MatchListItem({
    required String id,
    required String name,
    required double distanceKm,
    required String gym,
    required int lastLoginMinutes,
    required int trustScore,
    required String avatarUrl,
    required bool isOnline,
  }) = _MatchListItem;

  factory MatchListItem.fromJson(Map<String, dynamic> json) =>
      _$MatchListItemFromJson(json);
}
