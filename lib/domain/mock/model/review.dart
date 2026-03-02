import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String authorName,
    required double rating,
    required String text,
    required String postedAgoText,
    @Default(<String>[]) List<String> tags,
    required String avatarUrl,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
