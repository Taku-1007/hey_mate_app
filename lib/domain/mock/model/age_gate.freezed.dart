// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_gate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AgeGate _$AgeGateFromJson(Map<String, dynamic> json) {
  return _AgeGate.fromJson(json);
}

/// @nodoc
mixin _$AgeGate {
  String get title => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get primaryLabel => throw _privateConstructorUsedError;
  String get secondaryLabel => throw _privateConstructorUsedError;

  /// Serializes this AgeGate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgeGate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgeGateCopyWith<AgeGate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeGateCopyWith<$Res> {
  factory $AgeGateCopyWith(AgeGate value, $Res Function(AgeGate) then) =
      _$AgeGateCopyWithImpl<$Res, AgeGate>;
  @useResult
  $Res call({
    String title,
    String question,
    String description,
    String primaryLabel,
    String secondaryLabel,
  });
}

/// @nodoc
class _$AgeGateCopyWithImpl<$Res, $Val extends AgeGate>
    implements $AgeGateCopyWith<$Res> {
  _$AgeGateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgeGate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? question = null,
    Object? description = null,
    Object? primaryLabel = null,
    Object? secondaryLabel = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            question:
                null == question
                    ? _value.question
                    : question // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            primaryLabel:
                null == primaryLabel
                    ? _value.primaryLabel
                    : primaryLabel // ignore: cast_nullable_to_non_nullable
                        as String,
            secondaryLabel:
                null == secondaryLabel
                    ? _value.secondaryLabel
                    : secondaryLabel // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AgeGateImplCopyWith<$Res> implements $AgeGateCopyWith<$Res> {
  factory _$$AgeGateImplCopyWith(
    _$AgeGateImpl value,
    $Res Function(_$AgeGateImpl) then,
  ) = __$$AgeGateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String question,
    String description,
    String primaryLabel,
    String secondaryLabel,
  });
}

/// @nodoc
class __$$AgeGateImplCopyWithImpl<$Res>
    extends _$AgeGateCopyWithImpl<$Res, _$AgeGateImpl>
    implements _$$AgeGateImplCopyWith<$Res> {
  __$$AgeGateImplCopyWithImpl(
    _$AgeGateImpl _value,
    $Res Function(_$AgeGateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AgeGate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? question = null,
    Object? description = null,
    Object? primaryLabel = null,
    Object? secondaryLabel = null,
  }) {
    return _then(
      _$AgeGateImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        question:
            null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        primaryLabel:
            null == primaryLabel
                ? _value.primaryLabel
                : primaryLabel // ignore: cast_nullable_to_non_nullable
                    as String,
        secondaryLabel:
            null == secondaryLabel
                ? _value.secondaryLabel
                : secondaryLabel // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AgeGateImpl implements _AgeGate {
  const _$AgeGateImpl({
    required this.title,
    required this.question,
    required this.description,
    required this.primaryLabel,
    required this.secondaryLabel,
  });

  factory _$AgeGateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeGateImplFromJson(json);

  @override
  final String title;
  @override
  final String question;
  @override
  final String description;
  @override
  final String primaryLabel;
  @override
  final String secondaryLabel;

  @override
  String toString() {
    return 'AgeGate(title: $title, question: $question, description: $description, primaryLabel: $primaryLabel, secondaryLabel: $secondaryLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeGateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.primaryLabel, primaryLabel) ||
                other.primaryLabel == primaryLabel) &&
            (identical(other.secondaryLabel, secondaryLabel) ||
                other.secondaryLabel == secondaryLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    question,
    description,
    primaryLabel,
    secondaryLabel,
  );

  /// Create a copy of AgeGate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeGateImplCopyWith<_$AgeGateImpl> get copyWith =>
      __$$AgeGateImplCopyWithImpl<_$AgeGateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeGateImplToJson(this);
  }
}

abstract class _AgeGate implements AgeGate {
  const factory _AgeGate({
    required final String title,
    required final String question,
    required final String description,
    required final String primaryLabel,
    required final String secondaryLabel,
  }) = _$AgeGateImpl;

  factory _AgeGate.fromJson(Map<String, dynamic> json) = _$AgeGateImpl.fromJson;

  @override
  String get title;
  @override
  String get question;
  @override
  String get description;
  @override
  String get primaryLabel;
  @override
  String get secondaryLabel;

  /// Create a copy of AgeGate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgeGateImplCopyWith<_$AgeGateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
