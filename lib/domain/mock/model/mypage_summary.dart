import 'package:freezed_annotation/freezed_annotation.dart';
import 'mypage_menu_item.dart';

part 'mypage_summary.freezed.dart';
part 'mypage_summary.g.dart';

@freezed
class MypageSummary with _$MypageSummary {
  const factory MypageSummary({
    required String name,
    required int age,
    required String avatarUrl,
    required bool verified,
    required bool premium,
    required int trustScore,
    required String trustLabel,
    @Default(<String>[]) List<String> badges,
    @Default(<MypageMenuItem>[]) List<MypageMenuItem> menus,
    required String appVersion,
  }) = _MypageSummary;

  factory MypageSummary.fromJson(Map<String, dynamic> json) =>
      _$MypageSummaryFromJson(json);
}
