// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleSlot _$ScheduleSlotFromJson(Map<String, dynamic> json) {
  return _ScheduleSlot.fromJson(json);
}

/// @nodoc
mixin _$ScheduleSlot {
  String get dayOfWeek => throw _privateConstructorUsedError;
  bool get morningAvailable => throw _privateConstructorUsedError;
  bool get nightAvailable => throw _privateConstructorUsedError;

  /// Serializes this ScheduleSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleSlotCopyWith<ScheduleSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSlotCopyWith<$Res> {
  factory $ScheduleSlotCopyWith(
    ScheduleSlot value,
    $Res Function(ScheduleSlot) then,
  ) = _$ScheduleSlotCopyWithImpl<$Res, ScheduleSlot>;
  @useResult
  $Res call({String dayOfWeek, bool morningAvailable, bool nightAvailable});
}

/// @nodoc
class _$ScheduleSlotCopyWithImpl<$Res, $Val extends ScheduleSlot>
    implements $ScheduleSlotCopyWith<$Res> {
  _$ScheduleSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? morningAvailable = null,
    Object? nightAvailable = null,
  }) {
    return _then(
      _value.copyWith(
            dayOfWeek:
                null == dayOfWeek
                    ? _value.dayOfWeek
                    : dayOfWeek // ignore: cast_nullable_to_non_nullable
                        as String,
            morningAvailable:
                null == morningAvailable
                    ? _value.morningAvailable
                    : morningAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
            nightAvailable:
                null == nightAvailable
                    ? _value.nightAvailable
                    : nightAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleSlotImplCopyWith<$Res>
    implements $ScheduleSlotCopyWith<$Res> {
  factory _$$ScheduleSlotImplCopyWith(
    _$ScheduleSlotImpl value,
    $Res Function(_$ScheduleSlotImpl) then,
  ) = __$$ScheduleSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dayOfWeek, bool morningAvailable, bool nightAvailable});
}

/// @nodoc
class __$$ScheduleSlotImplCopyWithImpl<$Res>
    extends _$ScheduleSlotCopyWithImpl<$Res, _$ScheduleSlotImpl>
    implements _$$ScheduleSlotImplCopyWith<$Res> {
  __$$ScheduleSlotImplCopyWithImpl(
    _$ScheduleSlotImpl _value,
    $Res Function(_$ScheduleSlotImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? morningAvailable = null,
    Object? nightAvailable = null,
  }) {
    return _then(
      _$ScheduleSlotImpl(
        dayOfWeek:
            null == dayOfWeek
                ? _value.dayOfWeek
                : dayOfWeek // ignore: cast_nullable_to_non_nullable
                    as String,
        morningAvailable:
            null == morningAvailable
                ? _value.morningAvailable
                : morningAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
        nightAvailable:
            null == nightAvailable
                ? _value.nightAvailable
                : nightAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleSlotImpl implements _ScheduleSlot {
  const _$ScheduleSlotImpl({
    required this.dayOfWeek,
    required this.morningAvailable,
    required this.nightAvailable,
  });

  factory _$ScheduleSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleSlotImplFromJson(json);

  @override
  final String dayOfWeek;
  @override
  final bool morningAvailable;
  @override
  final bool nightAvailable;

  @override
  String toString() {
    return 'ScheduleSlot(dayOfWeek: $dayOfWeek, morningAvailable: $morningAvailable, nightAvailable: $nightAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleSlotImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.morningAvailable, morningAvailable) ||
                other.morningAvailable == morningAvailable) &&
            (identical(other.nightAvailable, nightAvailable) ||
                other.nightAvailable == nightAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dayOfWeek, morningAvailable, nightAvailable);

  /// Create a copy of ScheduleSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleSlotImplCopyWith<_$ScheduleSlotImpl> get copyWith =>
      __$$ScheduleSlotImplCopyWithImpl<_$ScheduleSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleSlotImplToJson(this);
  }
}

abstract class _ScheduleSlot implements ScheduleSlot {
  const factory _ScheduleSlot({
    required final String dayOfWeek,
    required final bool morningAvailable,
    required final bool nightAvailable,
  }) = _$ScheduleSlotImpl;

  factory _ScheduleSlot.fromJson(Map<String, dynamic> json) =
      _$ScheduleSlotImpl.fromJson;

  @override
  String get dayOfWeek;
  @override
  bool get morningAvailable;
  @override
  bool get nightAvailable;

  /// Create a copy of ScheduleSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleSlotImplCopyWith<_$ScheduleSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
