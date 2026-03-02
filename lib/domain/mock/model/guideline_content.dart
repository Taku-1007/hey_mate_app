import 'package:freezed_annotation/freezed_annotation.dart';
import 'guideline_item.dart';

part 'guideline_content.freezed.dart';
part 'guideline_content.g.dart';

@freezed
class GuidelineContent with _$GuidelineContent {
  const factory GuidelineContent({
    required String title,
    required String subtitle,
    required String agreeLabel,
    @Default(<GuidelineItem>[]) List<GuidelineItem> items,
  }) = _GuidelineContent;

  factory GuidelineContent.fromJson(Map<String, dynamic> json) =>
      _$GuidelineContentFromJson(json);
}
