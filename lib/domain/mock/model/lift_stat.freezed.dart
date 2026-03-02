// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lift_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LiftStat _$LiftStatFromJson(Map<String, dynamic> json) {
  return _LiftStat.fromJson(json);
}

/// @nodoc
mixin _$LiftStat {
  String get label => throw _privateConstructorUsedError;
  int get valueKg => throw _privateConstructorUsedError;
  int get maxKg => throw _privateConstructorUsedError;

  /// Serializes this LiftStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LiftStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiftStatCopyWith<LiftStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiftStatCopyWith<$Res> {
  factory $LiftStatCopyWith(LiftStat value, $Res Function(LiftStat) then) =
      _$LiftStatCopyWithImpl<$Res, LiftStat>;
  @useResult
  $Res call({String label, int valueKg, int maxKg});
}

/// @nodoc
class _$LiftStatCopyWithImpl<$Res, $Val extends LiftStat>
    implements $LiftStatCopyWith<$Res> {
  _$LiftStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiftStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? valueKg = null,
    Object? maxKg = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            valueKg:
                null == valueKg
                    ? _value.valueKg
                    : valueKg // ignore: cast_nullable_to_non_nullable
                        as int,
            maxKg:
                null == maxKg
                    ? _value.maxKg
                    : maxKg // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LiftStatImplCopyWith<$Res>
    implements $LiftStatCopyWith<$Res> {
  factory _$$LiftStatImplCopyWith(
    _$LiftStatImpl value,
    $Res Function(_$LiftStatImpl) then,
  ) = __$$LiftStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int valueKg, int maxKg});
}

/// @nodoc
class __$$LiftStatImplCopyWithImpl<$Res>
    extends _$LiftStatCopyWithImpl<$Res, _$LiftStatImpl>
    implements _$$LiftStatImplCopyWith<$Res> {
  __$$LiftStatImplCopyWithImpl(
    _$LiftStatImpl _value,
    $Res Function(_$LiftStatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiftStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? valueKg = null,
    Object? maxKg = null,
  }) {
    return _then(
      _$LiftStatImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        valueKg:
            null == valueKg
                ? _value.valueKg
                : valueKg // ignore: cast_nullable_to_non_nullable
                    as int,
        maxKg:
            null == maxKg
                ? _value.maxKg
                : maxKg // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LiftStatImpl implements _LiftStat {
  const _$LiftStatImpl({
    required this.label,
    required this.valueKg,
    required this.maxKg,
  });

  factory _$LiftStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiftStatImplFromJson(json);

  @override
  final String label;
  @override
  final int valueKg;
  @override
  final int maxKg;

  @override
  String toString() {
    return 'LiftStat(label: $label, valueKg: $valueKg, maxKg: $maxKg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiftStatImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.valueKg, valueKg) || other.valueKg == valueKg) &&
            (identical(other.maxKg, maxKg) || other.maxKg == maxKg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, valueKg, maxKg);

  /// Create a copy of LiftStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiftStatImplCopyWith<_$LiftStatImpl> get copyWith =>
      __$$LiftStatImplCopyWithImpl<_$LiftStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiftStatImplToJson(this);
  }
}

abstract class _LiftStat implements LiftStat {
  const factory _LiftStat({
    required final String label,
    required final int valueKg,
    required final int maxKg,
  }) = _$LiftStatImpl;

  factory _LiftStat.fromJson(Map<String, dynamic> json) =
      _$LiftStatImpl.fromJson;

  @override
  String get label;
  @override
  int get valueKg;
  @override
  int get maxKg;

  /// Create a copy of LiftStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiftStatImplCopyWith<_$LiftStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
