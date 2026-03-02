// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthdate_flow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BirthdateFlow _$BirthdateFlowFromJson(Map<String, dynamic> json) {
  return _BirthdateFlow.fromJson(json);
}

/// @nodoc
mixin _$BirthdateFlow {
  int get currentStep => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  List<int> get years => throw _privateConstructorUsedError;
  List<int> get months => throw _privateConstructorUsedError;
  List<int> get days => throw _privateConstructorUsedError;

  /// Serializes this BirthdateFlow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirthdateFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirthdateFlowCopyWith<BirthdateFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdateFlowCopyWith<$Res> {
  factory $BirthdateFlowCopyWith(
    BirthdateFlow value,
    $Res Function(BirthdateFlow) then,
  ) = _$BirthdateFlowCopyWithImpl<$Res, BirthdateFlow>;
  @useResult
  $Res call({
    int currentStep,
    int totalSteps,
    List<int> years,
    List<int> months,
    List<int> days,
  });
}

/// @nodoc
class _$BirthdateFlowCopyWithImpl<$Res, $Val extends BirthdateFlow>
    implements $BirthdateFlowCopyWith<$Res> {
  _$BirthdateFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirthdateFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? years = null,
    Object? months = null,
    Object? days = null,
  }) {
    return _then(
      _value.copyWith(
            currentStep:
                null == currentStep
                    ? _value.currentStep
                    : currentStep // ignore: cast_nullable_to_non_nullable
                        as int,
            totalSteps:
                null == totalSteps
                    ? _value.totalSteps
                    : totalSteps // ignore: cast_nullable_to_non_nullable
                        as int,
            years:
                null == years
                    ? _value.years
                    : years // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            months:
                null == months
                    ? _value.months
                    : months // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            days:
                null == days
                    ? _value.days
                    : days // ignore: cast_nullable_to_non_nullable
                        as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BirthdateFlowImplCopyWith<$Res>
    implements $BirthdateFlowCopyWith<$Res> {
  factory _$$BirthdateFlowImplCopyWith(
    _$BirthdateFlowImpl value,
    $Res Function(_$BirthdateFlowImpl) then,
  ) = __$$BirthdateFlowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentStep,
    int totalSteps,
    List<int> years,
    List<int> months,
    List<int> days,
  });
}

/// @nodoc
class __$$BirthdateFlowImplCopyWithImpl<$Res>
    extends _$BirthdateFlowCopyWithImpl<$Res, _$BirthdateFlowImpl>
    implements _$$BirthdateFlowImplCopyWith<$Res> {
  __$$BirthdateFlowImplCopyWithImpl(
    _$BirthdateFlowImpl _value,
    $Res Function(_$BirthdateFlowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BirthdateFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? years = null,
    Object? months = null,
    Object? days = null,
  }) {
    return _then(
      _$BirthdateFlowImpl(
        currentStep:
            null == currentStep
                ? _value.currentStep
                : currentStep // ignore: cast_nullable_to_non_nullable
                    as int,
        totalSteps:
            null == totalSteps
                ? _value.totalSteps
                : totalSteps // ignore: cast_nullable_to_non_nullable
                    as int,
        years:
            null == years
                ? _value._years
                : years // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        months:
            null == months
                ? _value._months
                : months // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        days:
            null == days
                ? _value._days
                : days // ignore: cast_nullable_to_non_nullable
                    as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthdateFlowImpl implements _BirthdateFlow {
  const _$BirthdateFlowImpl({
    required this.currentStep,
    required this.totalSteps,
    final List<int> years = const <int>[],
    final List<int> months = const <int>[],
    final List<int> days = const <int>[],
  }) : _years = years,
       _months = months,
       _days = days;

  factory _$BirthdateFlowImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthdateFlowImplFromJson(json);

  @override
  final int currentStep;
  @override
  final int totalSteps;
  final List<int> _years;
  @override
  @JsonKey()
  List<int> get years {
    if (_years is EqualUnmodifiableListView) return _years;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_years);
  }

  final List<int> _months;
  @override
  @JsonKey()
  List<int> get months {
    if (_months is EqualUnmodifiableListView) return _months;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_months);
  }

  final List<int> _days;
  @override
  @JsonKey()
  List<int> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'BirthdateFlow(currentStep: $currentStep, totalSteps: $totalSteps, years: $years, months: $months, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthdateFlowImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            const DeepCollectionEquality().equals(other._years, _years) &&
            const DeepCollectionEquality().equals(other._months, _months) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentStep,
    totalSteps,
    const DeepCollectionEquality().hash(_years),
    const DeepCollectionEquality().hash(_months),
    const DeepCollectionEquality().hash(_days),
  );

  /// Create a copy of BirthdateFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthdateFlowImplCopyWith<_$BirthdateFlowImpl> get copyWith =>
      __$$BirthdateFlowImplCopyWithImpl<_$BirthdateFlowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthdateFlowImplToJson(this);
  }
}

abstract class _BirthdateFlow implements BirthdateFlow {
  const factory _BirthdateFlow({
    required final int currentStep,
    required final int totalSteps,
    final List<int> years,
    final List<int> months,
    final List<int> days,
  }) = _$BirthdateFlowImpl;

  factory _BirthdateFlow.fromJson(Map<String, dynamic> json) =
      _$BirthdateFlowImpl.fromJson;

  @override
  int get currentStep;
  @override
  int get totalSteps;
  @override
  List<int> get years;
  @override
  List<int> get months;
  @override
  List<int> get days;

  /// Create a copy of BirthdateFlow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirthdateFlowImplCopyWith<_$BirthdateFlowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
