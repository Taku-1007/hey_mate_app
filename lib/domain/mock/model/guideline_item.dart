import 'package:freezed_annotation/freezed_annotation.dart';

part 'guideline_item.freezed.dart';
part 'guideline_item.g.dart';

@freezed
class GuidelineItem with _$GuidelineItem {
  const factory GuidelineItem({
    required String id,
    required String icon,
    required String title,
    required String description,
    required String colorHex,
  }) = _GuidelineItem;

  factory GuidelineItem.fromJson(Map<String, dynamic> json) =>
      _$GuidelineItemFromJson(json);
}
