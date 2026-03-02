// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_proposal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DateProposal _$DateProposalFromJson(Map<String, dynamic> json) {
  return _DateProposal.fromJson(json);
}

/// @nodoc
mixin _$DateProposal {
  String get id => throw _privateConstructorUsedError;
  String get dateText => throw _privateConstructorUsedError;
  String get timeText => throw _privateConstructorUsedError;

  /// Serializes this DateProposal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateProposal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateProposalCopyWith<DateProposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateProposalCopyWith<$Res> {
  factory $DateProposalCopyWith(
    DateProposal value,
    $Res Function(DateProposal) then,
  ) = _$DateProposalCopyWithImpl<$Res, DateProposal>;
  @useResult
  $Res call({String id, String dateText, String timeText});
}

/// @nodoc
class _$DateProposalCopyWithImpl<$Res, $Val extends DateProposal>
    implements $DateProposalCopyWith<$Res> {
  _$DateProposalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateProposal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateText = null,
    Object? timeText = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            dateText:
                null == dateText
                    ? _value.dateText
                    : dateText // ignore: cast_nullable_to_non_nullable
                        as String,
            timeText:
                null == timeText
                    ? _value.timeText
                    : timeText // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DateProposalImplCopyWith<$Res>
    implements $DateProposalCopyWith<$Res> {
  factory _$$DateProposalImplCopyWith(
    _$DateProposalImpl value,
    $Res Function(_$DateProposalImpl) then,
  ) = __$$DateProposalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String dateText, String timeText});
}

/// @nodoc
class __$$DateProposalImplCopyWithImpl<$Res>
    extends _$DateProposalCopyWithImpl<$Res, _$DateProposalImpl>
    implements _$$DateProposalImplCopyWith<$Res> {
  __$$DateProposalImplCopyWithImpl(
    _$DateProposalImpl _value,
    $Res Function(_$DateProposalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DateProposal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateText = null,
    Object? timeText = null,
  }) {
    return _then(
      _$DateProposalImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        dateText:
            null == dateText
                ? _value.dateText
                : dateText // ignore: cast_nullable_to_non_nullable
                    as String,
        timeText:
            null == timeText
                ? _value.timeText
                : timeText // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DateProposalImpl implements _DateProposal {
  const _$DateProposalImpl({
    required this.id,
    required this.dateText,
    required this.timeText,
  });

  factory _$DateProposalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateProposalImplFromJson(json);

  @override
  final String id;
  @override
  final String dateText;
  @override
  final String timeText;

  @override
  String toString() {
    return 'DateProposal(id: $id, dateText: $dateText, timeText: $timeText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateProposalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateText, dateText) ||
                other.dateText == dateText) &&
            (identical(other.timeText, timeText) ||
                other.timeText == timeText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateText, timeText);

  /// Create a copy of DateProposal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateProposalImplCopyWith<_$DateProposalImpl> get copyWith =>
      __$$DateProposalImplCopyWithImpl<_$DateProposalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateProposalImplToJson(this);
  }
}

abstract class _DateProposal implements DateProposal {
  const factory _DateProposal({
    required final String id,
    required final String dateText,
    required final String timeText,
  }) = _$DateProposalImpl;

  factory _DateProposal.fromJson(Map<String, dynamic> json) =
      _$DateProposalImpl.fromJson;

  @override
  String get id;
  @override
  String get dateText;
  @override
  String get timeText;

  /// Create a copy of DateProposal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateProposalImplCopyWith<_$DateProposalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
