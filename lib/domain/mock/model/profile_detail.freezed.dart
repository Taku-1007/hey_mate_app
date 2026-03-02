// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfileDetail _$ProfileDetailFromJson(Map<String, dynamic> json) {
  return _ProfileDetail.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetail {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get gym => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  int get trustScore => throw _privateConstructorUsedError;
  String get scoreText => throw _privateConstructorUsedError;
  String get trainingHistory => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;
  List<LiftStat> get lifts => throw _privateConstructorUsedError;
  List<ScheduleSlot> get schedule => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get badges => throw _privateConstructorUsedError;

  /// Serializes this ProfileDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDetailCopyWith<ProfileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailCopyWith<$Res> {
  factory $ProfileDetailCopyWith(
    ProfileDetail value,
    $Res Function(ProfileDetail) then,
  ) = _$ProfileDetailCopyWithImpl<$Res, ProfileDetail>;
  @useResult
  $Res call({
    String id,
    String name,
    int age,
    String location,
    String gym,
    bool verified,
    int trustScore,
    String scoreText,
    String trainingHistory,
    String specialty,
    List<LiftStat> lifts,
    List<ScheduleSlot> schedule,
    List<Review> reviews,
    String bio,
    List<String> badges,
  });
}

/// @nodoc
class _$ProfileDetailCopyWithImpl<$Res, $Val extends ProfileDetail>
    implements $ProfileDetailCopyWith<$Res> {
  _$ProfileDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? location = null,
    Object? gym = null,
    Object? verified = null,
    Object? trustScore = null,
    Object? scoreText = null,
    Object? trainingHistory = null,
    Object? specialty = null,
    Object? lifts = null,
    Object? schedule = null,
    Object? reviews = null,
    Object? bio = null,
    Object? badges = null,
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
            age:
                null == age
                    ? _value.age
                    : age // ignore: cast_nullable_to_non_nullable
                        as int,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            gym:
                null == gym
                    ? _value.gym
                    : gym // ignore: cast_nullable_to_non_nullable
                        as String,
            verified:
                null == verified
                    ? _value.verified
                    : verified // ignore: cast_nullable_to_non_nullable
                        as bool,
            trustScore:
                null == trustScore
                    ? _value.trustScore
                    : trustScore // ignore: cast_nullable_to_non_nullable
                        as int,
            scoreText:
                null == scoreText
                    ? _value.scoreText
                    : scoreText // ignore: cast_nullable_to_non_nullable
                        as String,
            trainingHistory:
                null == trainingHistory
                    ? _value.trainingHistory
                    : trainingHistory // ignore: cast_nullable_to_non_nullable
                        as String,
            specialty:
                null == specialty
                    ? _value.specialty
                    : specialty // ignore: cast_nullable_to_non_nullable
                        as String,
            lifts:
                null == lifts
                    ? _value.lifts
                    : lifts // ignore: cast_nullable_to_non_nullable
                        as List<LiftStat>,
            schedule:
                null == schedule
                    ? _value.schedule
                    : schedule // ignore: cast_nullable_to_non_nullable
                        as List<ScheduleSlot>,
            reviews:
                null == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<Review>,
            bio:
                null == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String,
            badges:
                null == badges
                    ? _value.badges
                    : badges // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileDetailImplCopyWith<$Res>
    implements $ProfileDetailCopyWith<$Res> {
  factory _$$ProfileDetailImplCopyWith(
    _$ProfileDetailImpl value,
    $Res Function(_$ProfileDetailImpl) then,
  ) = __$$ProfileDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int age,
    String location,
    String gym,
    bool verified,
    int trustScore,
    String scoreText,
    String trainingHistory,
    String specialty,
    List<LiftStat> lifts,
    List<ScheduleSlot> schedule,
    List<Review> reviews,
    String bio,
    List<String> badges,
  });
}

/// @nodoc
class __$$ProfileDetailImplCopyWithImpl<$Res>
    extends _$ProfileDetailCopyWithImpl<$Res, _$ProfileDetailImpl>
    implements _$$ProfileDetailImplCopyWith<$Res> {
  __$$ProfileDetailImplCopyWithImpl(
    _$ProfileDetailImpl _value,
    $Res Function(_$ProfileDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? location = null,
    Object? gym = null,
    Object? verified = null,
    Object? trustScore = null,
    Object? scoreText = null,
    Object? trainingHistory = null,
    Object? specialty = null,
    Object? lifts = null,
    Object? schedule = null,
    Object? reviews = null,
    Object? bio = null,
    Object? badges = null,
  }) {
    return _then(
      _$ProfileDetailImpl(
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
        age:
            null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                    as int,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        gym:
            null == gym
                ? _value.gym
                : gym // ignore: cast_nullable_to_non_nullable
                    as String,
        verified:
            null == verified
                ? _value.verified
                : verified // ignore: cast_nullable_to_non_nullable
                    as bool,
        trustScore:
            null == trustScore
                ? _value.trustScore
                : trustScore // ignore: cast_nullable_to_non_nullable
                    as int,
        scoreText:
            null == scoreText
                ? _value.scoreText
                : scoreText // ignore: cast_nullable_to_non_nullable
                    as String,
        trainingHistory:
            null == trainingHistory
                ? _value.trainingHistory
                : trainingHistory // ignore: cast_nullable_to_non_nullable
                    as String,
        specialty:
            null == specialty
                ? _value.specialty
                : specialty // ignore: cast_nullable_to_non_nullable
                    as String,
        lifts:
            null == lifts
                ? _value._lifts
                : lifts // ignore: cast_nullable_to_non_nullable
                    as List<LiftStat>,
        schedule:
            null == schedule
                ? _value._schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                    as List<ScheduleSlot>,
        reviews:
            null == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<Review>,
        bio:
            null == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String,
        badges:
            null == badges
                ? _value._badges
                : badges // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDetailImpl implements _ProfileDetail {
  const _$ProfileDetailImpl({
    required this.id,
    required this.name,
    required this.age,
    required this.location,
    required this.gym,
    required this.verified,
    required this.trustScore,
    required this.scoreText,
    required this.trainingHistory,
    required this.specialty,
    final List<LiftStat> lifts = const <LiftStat>[],
    final List<ScheduleSlot> schedule = const <ScheduleSlot>[],
    final List<Review> reviews = const <Review>[],
    required this.bio,
    final List<String> badges = const <String>[],
  }) : _lifts = lifts,
       _schedule = schedule,
       _reviews = reviews,
       _badges = badges;

  factory _$ProfileDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;
  @override
  final String location;
  @override
  final String gym;
  @override
  final bool verified;
  @override
  final int trustScore;
  @override
  final String scoreText;
  @override
  final String trainingHistory;
  @override
  final String specialty;
  final List<LiftStat> _lifts;
  @override
  @JsonKey()
  List<LiftStat> get lifts {
    if (_lifts is EqualUnmodifiableListView) return _lifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lifts);
  }

  final List<ScheduleSlot> _schedule;
  @override
  @JsonKey()
  List<ScheduleSlot> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final String bio;
  final List<String> _badges;
  @override
  @JsonKey()
  List<String> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'ProfileDetail(id: $id, name: $name, age: $age, location: $location, gym: $gym, verified: $verified, trustScore: $trustScore, scoreText: $scoreText, trainingHistory: $trainingHistory, specialty: $specialty, lifts: $lifts, schedule: $schedule, reviews: $reviews, bio: $bio, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gym, gym) || other.gym == gym) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.trustScore, trustScore) ||
                other.trustScore == trustScore) &&
            (identical(other.scoreText, scoreText) ||
                other.scoreText == scoreText) &&
            (identical(other.trainingHistory, trainingHistory) ||
                other.trainingHistory == trainingHistory) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            const DeepCollectionEquality().equals(other._lifts, _lifts) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    age,
    location,
    gym,
    verified,
    trustScore,
    scoreText,
    trainingHistory,
    specialty,
    const DeepCollectionEquality().hash(_lifts),
    const DeepCollectionEquality().hash(_schedule),
    const DeepCollectionEquality().hash(_reviews),
    bio,
    const DeepCollectionEquality().hash(_badges),
  );

  /// Create a copy of ProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailImplCopyWith<_$ProfileDetailImpl> get copyWith =>
      __$$ProfileDetailImplCopyWithImpl<_$ProfileDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDetailImplToJson(this);
  }
}

abstract class _ProfileDetail implements ProfileDetail {
  const factory _ProfileDetail({
    required final String id,
    required final String name,
    required final int age,
    required final String location,
    required final String gym,
    required final bool verified,
    required final int trustScore,
    required final String scoreText,
    required final String trainingHistory,
    required final String specialty,
    final List<LiftStat> lifts,
    final List<ScheduleSlot> schedule,
    final List<Review> reviews,
    required final String bio,
    final List<String> badges,
  }) = _$ProfileDetailImpl;

  factory _ProfileDetail.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  String get location;
  @override
  String get gym;
  @override
  bool get verified;
  @override
  int get trustScore;
  @override
  String get scoreText;
  @override
  String get trainingHistory;
  @override
  String get specialty;
  @override
  List<LiftStat> get lifts;
  @override
  List<ScheduleSlot> get schedule;
  @override
  List<Review> get reviews;
  @override
  String get bio;
  @override
  List<String> get badges;

  /// Create a copy of ProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDetailImplCopyWith<_$ProfileDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
