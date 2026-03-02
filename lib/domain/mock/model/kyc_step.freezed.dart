// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KycStep _$KycStepFromJson(Map<String, dynamic> json) {
  return _KycStep.fromJson(json);
}

/// @nodoc
mixin _$KycStep {
  int get index => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get tips => throw _privateConstructorUsedError;

  /// Serializes this KycStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStepCopyWith<KycStep> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStepCopyWith<$Res> {
  factory $KycStepCopyWith(KycStep value, $Res Function(KycStep) then) =
      _$KycStepCopyWithImpl<$Res, KycStep>;
  @useResult
  $Res call({int index, String title, String description, List<String> tips});
}

/// @nodoc
class _$KycStepCopyWithImpl<$Res, $Val extends KycStep>
    implements $KycStepCopyWith<$Res> {
  _$KycStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? title = null,
    Object? description = null,
    Object? tips = null,
  }) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            tips:
                null == tips
                    ? _value.tips
                    : tips // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycStepImplCopyWith<$Res> implements $KycStepCopyWith<$Res> {
  factory _$$KycStepImplCopyWith(
    _$KycStepImpl value,
    $Res Function(_$KycStepImpl) then,
  ) = __$$KycStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String title, String description, List<String> tips});
}

/// @nodoc
class __$$KycStepImplCopyWithImpl<$Res>
    extends _$KycStepCopyWithImpl<$Res, _$KycStepImpl>
    implements _$$KycStepImplCopyWith<$Res> {
  __$$KycStepImplCopyWithImpl(
    _$KycStepImpl _value,
    $Res Function(_$KycStepImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? title = null,
    Object? description = null,
    Object? tips = null,
  }) {
    return _then(
      _$KycStepImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        tips:
            null == tips
                ? _value._tips
                : tips // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStepImpl implements _KycStep {
  const _$KycStepImpl({
    required this.index,
    required this.title,
    required this.description,
    final List<String> tips = const <String>[],
  }) : _tips = tips;

  factory _$KycStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStepImplFromJson(json);

  @override
  final int index;
  @override
  final String title;
  @override
  final String description;
  final List<String> _tips;
  @override
  @JsonKey()
  List<String> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  String toString() {
    return 'KycStep(index: $index, title: $title, description: $description, tips: $tips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStepImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    index,
    title,
    description,
    const DeepCollectionEquality().hash(_tips),
  );

  /// Create a copy of KycStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStepImplCopyWith<_$KycStepImpl> get copyWith =>
      __$$KycStepImplCopyWithImpl<_$KycStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStepImplToJson(this);
  }
}

abstract class _KycStep implements KycStep {
  const factory _KycStep({
    required final int index,
    required final String title,
    required final String description,
    final List<String> tips,
  }) = _$KycStepImpl;

  factory _KycStep.fromJson(Map<String, dynamic> json) = _$KycStepImpl.fromJson;

  @override
  int get index;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get tips;

  /// Create a copy of KycStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStepImplCopyWith<_$KycStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
