// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guideline_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GuidelineContent _$GuidelineContentFromJson(Map<String, dynamic> json) {
  return _GuidelineContent.fromJson(json);
}

/// @nodoc
mixin _$GuidelineContent {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get agreeLabel => throw _privateConstructorUsedError;
  List<GuidelineItem> get items => throw _privateConstructorUsedError;

  /// Serializes this GuidelineContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuidelineContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuidelineContentCopyWith<GuidelineContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidelineContentCopyWith<$Res> {
  factory $GuidelineContentCopyWith(
    GuidelineContent value,
    $Res Function(GuidelineContent) then,
  ) = _$GuidelineContentCopyWithImpl<$Res, GuidelineContent>;
  @useResult
  $Res call({
    String title,
    String subtitle,
    String agreeLabel,
    List<GuidelineItem> items,
  });
}

/// @nodoc
class _$GuidelineContentCopyWithImpl<$Res, $Val extends GuidelineContent>
    implements $GuidelineContentCopyWith<$Res> {
  _$GuidelineContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuidelineContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? agreeLabel = null,
    Object? items = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            subtitle:
                null == subtitle
                    ? _value.subtitle
                    : subtitle // ignore: cast_nullable_to_non_nullable
                        as String,
            agreeLabel:
                null == agreeLabel
                    ? _value.agreeLabel
                    : agreeLabel // ignore: cast_nullable_to_non_nullable
                        as String,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<GuidelineItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuidelineContentImplCopyWith<$Res>
    implements $GuidelineContentCopyWith<$Res> {
  factory _$$GuidelineContentImplCopyWith(
    _$GuidelineContentImpl value,
    $Res Function(_$GuidelineContentImpl) then,
  ) = __$$GuidelineContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String subtitle,
    String agreeLabel,
    List<GuidelineItem> items,
  });
}

/// @nodoc
class __$$GuidelineContentImplCopyWithImpl<$Res>
    extends _$GuidelineContentCopyWithImpl<$Res, _$GuidelineContentImpl>
    implements _$$GuidelineContentImplCopyWith<$Res> {
  __$$GuidelineContentImplCopyWithImpl(
    _$GuidelineContentImpl _value,
    $Res Function(_$GuidelineContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuidelineContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? agreeLabel = null,
    Object? items = null,
  }) {
    return _then(
      _$GuidelineContentImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        subtitle:
            null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                    as String,
        agreeLabel:
            null == agreeLabel
                ? _value.agreeLabel
                : agreeLabel // ignore: cast_nullable_to_non_nullable
                    as String,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<GuidelineItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidelineContentImpl implements _GuidelineContent {
  const _$GuidelineContentImpl({
    required this.title,
    required this.subtitle,
    required this.agreeLabel,
    final List<GuidelineItem> items = const <GuidelineItem>[],
  }) : _items = items;

  factory _$GuidelineContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidelineContentImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String agreeLabel;
  final List<GuidelineItem> _items;
  @override
  @JsonKey()
  List<GuidelineItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GuidelineContent(title: $title, subtitle: $subtitle, agreeLabel: $agreeLabel, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidelineContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.agreeLabel, agreeLabel) ||
                other.agreeLabel == agreeLabel) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    subtitle,
    agreeLabel,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of GuidelineContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuidelineContentImplCopyWith<_$GuidelineContentImpl> get copyWith =>
      __$$GuidelineContentImplCopyWithImpl<_$GuidelineContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidelineContentImplToJson(this);
  }
}

abstract class _GuidelineContent implements GuidelineContent {
  const factory _GuidelineContent({
    required final String title,
    required final String subtitle,
    required final String agreeLabel,
    final List<GuidelineItem> items,
  }) = _$GuidelineContentImpl;

  factory _GuidelineContent.fromJson(Map<String, dynamic> json) =
      _$GuidelineContentImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get agreeLabel;
  @override
  List<GuidelineItem> get items;

  /// Create a copy of GuidelineContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuidelineContentImplCopyWith<_$GuidelineContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
