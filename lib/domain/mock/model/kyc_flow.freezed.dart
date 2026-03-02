// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_flow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KycFlow _$KycFlowFromJson(Map<String, dynamic> json) {
  return _KycFlow.fromJson(json);
}

/// @nodoc
mixin _$KycFlow {
  List<KycStep> get steps => throw _privateConstructorUsedError;
  List<GymSuggestion> get nearbyGyms => throw _privateConstructorUsedError;

  /// Serializes this KycFlow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycFlowCopyWith<KycFlow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycFlowCopyWith<$Res> {
  factory $KycFlowCopyWith(KycFlow value, $Res Function(KycFlow) then) =
      _$KycFlowCopyWithImpl<$Res, KycFlow>;
  @useResult
  $Res call({List<KycStep> steps, List<GymSuggestion> nearbyGyms});
}

/// @nodoc
class _$KycFlowCopyWithImpl<$Res, $Val extends KycFlow>
    implements $KycFlowCopyWith<$Res> {
  _$KycFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? steps = null, Object? nearbyGyms = null}) {
    return _then(
      _value.copyWith(
            steps:
                null == steps
                    ? _value.steps
                    : steps // ignore: cast_nullable_to_non_nullable
                        as List<KycStep>,
            nearbyGyms:
                null == nearbyGyms
                    ? _value.nearbyGyms
                    : nearbyGyms // ignore: cast_nullable_to_non_nullable
                        as List<GymSuggestion>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycFlowImplCopyWith<$Res> implements $KycFlowCopyWith<$Res> {
  factory _$$KycFlowImplCopyWith(
    _$KycFlowImpl value,
    $Res Function(_$KycFlowImpl) then,
  ) = __$$KycFlowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KycStep> steps, List<GymSuggestion> nearbyGyms});
}

/// @nodoc
class __$$KycFlowImplCopyWithImpl<$Res>
    extends _$KycFlowCopyWithImpl<$Res, _$KycFlowImpl>
    implements _$$KycFlowImplCopyWith<$Res> {
  __$$KycFlowImplCopyWithImpl(
    _$KycFlowImpl _value,
    $Res Function(_$KycFlowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? steps = null, Object? nearbyGyms = null}) {
    return _then(
      _$KycFlowImpl(
        steps:
            null == steps
                ? _value._steps
                : steps // ignore: cast_nullable_to_non_nullable
                    as List<KycStep>,
        nearbyGyms:
            null == nearbyGyms
                ? _value._nearbyGyms
                : nearbyGyms // ignore: cast_nullable_to_non_nullable
                    as List<GymSuggestion>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycFlowImpl implements _KycFlow {
  const _$KycFlowImpl({
    final List<KycStep> steps = const <KycStep>[],
    final List<GymSuggestion> nearbyGyms = const <GymSuggestion>[],
  }) : _steps = steps,
       _nearbyGyms = nearbyGyms;

  factory _$KycFlowImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycFlowImplFromJson(json);

  final List<KycStep> _steps;
  @override
  @JsonKey()
  List<KycStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<GymSuggestion> _nearbyGyms;
  @override
  @JsonKey()
  List<GymSuggestion> get nearbyGyms {
    if (_nearbyGyms is EqualUnmodifiableListView) return _nearbyGyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyGyms);
  }

  @override
  String toString() {
    return 'KycFlow(steps: $steps, nearbyGyms: $nearbyGyms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycFlowImpl &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality().equals(
              other._nearbyGyms,
              _nearbyGyms,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_steps),
    const DeepCollectionEquality().hash(_nearbyGyms),
  );

  /// Create a copy of KycFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycFlowImplCopyWith<_$KycFlowImpl> get copyWith =>
      __$$KycFlowImplCopyWithImpl<_$KycFlowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycFlowImplToJson(this);
  }
}

abstract class _KycFlow implements KycFlow {
  const factory _KycFlow({
    final List<KycStep> steps,
    final List<GymSuggestion> nearbyGyms,
  }) = _$KycFlowImpl;

  factory _KycFlow.fromJson(Map<String, dynamic> json) = _$KycFlowImpl.fromJson;

  @override
  List<KycStep> get steps;
  @override
  List<GymSuggestion> get nearbyGyms;

  /// Create a copy of KycFlow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycFlowImplCopyWith<_$KycFlowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
