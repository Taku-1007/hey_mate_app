// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gym_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GymSuggestion _$GymSuggestionFromJson(Map<String, dynamic> json) {
  return _GymSuggestion.fromJson(json);
}

/// @nodoc
mixin _$GymSuggestion {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get distanceKm => throw _privateConstructorUsedError;

  /// Serializes this GymSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GymSuggestionCopyWith<GymSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymSuggestionCopyWith<$Res> {
  factory $GymSuggestionCopyWith(
    GymSuggestion value,
    $Res Function(GymSuggestion) then,
  ) = _$GymSuggestionCopyWithImpl<$Res, GymSuggestion>;
  @useResult
  $Res call({String id, String name, String address, double distanceKm});
}

/// @nodoc
class _$GymSuggestionCopyWithImpl<$Res, $Val extends GymSuggestion>
    implements $GymSuggestionCopyWith<$Res> {
  _$GymSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? distanceKm = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            distanceKm:
                null == distanceKm
                    ? _value.distanceKm
                    : distanceKm // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GymSuggestionImplCopyWith<$Res>
    implements $GymSuggestionCopyWith<$Res> {
  factory _$$GymSuggestionImplCopyWith(
    _$GymSuggestionImpl value,
    $Res Function(_$GymSuggestionImpl) then,
  ) = __$$GymSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String address, double distanceKm});
}

/// @nodoc
class __$$GymSuggestionImplCopyWithImpl<$Res>
    extends _$GymSuggestionCopyWithImpl<$Res, _$GymSuggestionImpl>
    implements _$$GymSuggestionImplCopyWith<$Res> {
  __$$GymSuggestionImplCopyWithImpl(
    _$GymSuggestionImpl _value,
    $Res Function(_$GymSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? distanceKm = null,
  }) {
    return _then(
      _$GymSuggestionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        distanceKm:
            null == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GymSuggestionImpl implements _GymSuggestion {
  const _$GymSuggestionImpl({
    required this.id,
    required this.name,
    required this.address,
    required this.distanceKm,
  });

  factory _$GymSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GymSuggestionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final double distanceKm;

  @override
  String toString() {
    return 'GymSuggestion(id: $id, name: $name, address: $address, distanceKm: $distanceKm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GymSuggestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, distanceKm);

  /// Create a copy of GymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GymSuggestionImplCopyWith<_$GymSuggestionImpl> get copyWith =>
      __$$GymSuggestionImplCopyWithImpl<_$GymSuggestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GymSuggestionImplToJson(this);
  }
}

abstract class _GymSuggestion implements GymSuggestion {
  const factory _GymSuggestion({
    required final String id,
    required final String name,
    required final String address,
    required final double distanceKm,
  }) = _$GymSuggestionImpl;

  factory _GymSuggestion.fromJson(Map<String, dynamic> json) =
      _$GymSuggestionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get address;
  @override
  double get distanceKm;

  /// Create a copy of GymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GymSuggestionImplCopyWith<_$GymSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
