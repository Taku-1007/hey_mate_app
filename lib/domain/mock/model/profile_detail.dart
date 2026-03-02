import 'package:freezed_annotation/freezed_annotation.dart';
import 'lift_stat.dart';
import 'schedule_slot.dart';
import 'review.dart';

part 'profile_detail.freezed.dart';
part 'profile_detail.g.dart';

@freezed
class ProfileDetail with _$ProfileDetail {
  const factory ProfileDetail({
    required String id,
    required String name,
    required int age,
    required String location,
    required String gym,
    required bool verified,
    required int trustScore,
    required String scoreText,
    required String trainingHistory,
    required String specialty,
    @Default(<LiftStat>[]) List<LiftStat> lifts,
    @Default(<ScheduleSlot>[]) List<ScheduleSlot> schedule,
    @Default(<Review>[]) List<Review> reviews,
    required String bio,
    @Default(<String>[]) List<String> badges,
  }) = _ProfileDetail;

  factory ProfileDetail.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailFromJson(json);
}
