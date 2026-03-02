import 'package:freezed_annotation/freezed_annotation.dart';

part 'gym_suggestion.freezed.dart';
part 'gym_suggestion.g.dart';

@freezed
class GymSuggestion with _$GymSuggestion {
  const factory GymSuggestion({
    required String id,
    required String name,
    required String address,
    required double distanceKm,
  }) = _GymSuggestion;

  factory GymSuggestion.fromJson(Map<String, dynamic> json) =>
      _$GymSuggestionFromJson(json);
}
