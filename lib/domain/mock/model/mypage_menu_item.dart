import 'package:freezed_annotation/freezed_annotation.dart';

part 'mypage_menu_item.freezed.dart';
part 'mypage_menu_item.g.dart';

@freezed
class MypageMenuItem with _$MypageMenuItem {
  const factory MypageMenuItem({
    required String id,
    required String title,
    required String subtitle,
    required String icon,
    required String accentColorHex,
    required String targetRoute,
  }) = _MypageMenuItem;

  factory MypageMenuItem.fromJson(Map<String, dynamic> json) =>
      _$MypageMenuItemFromJson(json);
}
