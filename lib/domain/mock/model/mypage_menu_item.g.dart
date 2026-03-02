// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mypage_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MypageMenuItemImpl _$$MypageMenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MypageMenuItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      icon: json['icon'] as String,
      accentColorHex: json['accentColorHex'] as String,
      targetRoute: json['targetRoute'] as String,
    );

Map<String, dynamic> _$$MypageMenuItemImplToJson(
  _$MypageMenuItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'icon': instance.icon,
  'accentColorHex': instance.accentColorHex,
  'targetRoute': instance.targetRoute,
};
