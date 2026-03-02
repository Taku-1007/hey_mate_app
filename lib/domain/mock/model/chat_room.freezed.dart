// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  String get roomId => throw _privateConstructorUsedError;
  String get participantName => throw _privateConstructorUsedError;
  String get participantAvatar => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get gymShareEnabled => throw _privateConstructorUsedError;
  bool get scheduleShareEnabled => throw _privateConstructorUsedError;
  bool get detailShareEnabled => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  List<DateProposal> get proposals => throw _privateConstructorUsedError;
  List<String> get quickReplies => throw _privateConstructorUsedError;

  /// Serializes this ChatRoom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res, ChatRoom>;
  @useResult
  $Res call({
    String roomId,
    String participantName,
    String participantAvatar,
    bool isOnline,
    bool gymShareEnabled,
    bool scheduleShareEnabled,
    bool detailShareEnabled,
    List<ChatMessage> messages,
    List<DateProposal> proposals,
    List<String> quickReplies,
  });
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res, $Val extends ChatRoom>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? participantName = null,
    Object? participantAvatar = null,
    Object? isOnline = null,
    Object? gymShareEnabled = null,
    Object? scheduleShareEnabled = null,
    Object? detailShareEnabled = null,
    Object? messages = null,
    Object? proposals = null,
    Object? quickReplies = null,
  }) {
    return _then(
      _value.copyWith(
            roomId:
                null == roomId
                    ? _value.roomId
                    : roomId // ignore: cast_nullable_to_non_nullable
                        as String,
            participantName:
                null == participantName
                    ? _value.participantName
                    : participantName // ignore: cast_nullable_to_non_nullable
                        as String,
            participantAvatar:
                null == participantAvatar
                    ? _value.participantAvatar
                    : participantAvatar // ignore: cast_nullable_to_non_nullable
                        as String,
            isOnline:
                null == isOnline
                    ? _value.isOnline
                    : isOnline // ignore: cast_nullable_to_non_nullable
                        as bool,
            gymShareEnabled:
                null == gymShareEnabled
                    ? _value.gymShareEnabled
                    : gymShareEnabled // ignore: cast_nullable_to_non_nullable
                        as bool,
            scheduleShareEnabled:
                null == scheduleShareEnabled
                    ? _value.scheduleShareEnabled
                    : scheduleShareEnabled // ignore: cast_nullable_to_non_nullable
                        as bool,
            detailShareEnabled:
                null == detailShareEnabled
                    ? _value.detailShareEnabled
                    : detailShareEnabled // ignore: cast_nullable_to_non_nullable
                        as bool,
            messages:
                null == messages
                    ? _value.messages
                    : messages // ignore: cast_nullable_to_non_nullable
                        as List<ChatMessage>,
            proposals:
                null == proposals
                    ? _value.proposals
                    : proposals // ignore: cast_nullable_to_non_nullable
                        as List<DateProposal>,
            quickReplies:
                null == quickReplies
                    ? _value.quickReplies
                    : quickReplies // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatRoomImplCopyWith<$Res>
    implements $ChatRoomCopyWith<$Res> {
  factory _$$ChatRoomImplCopyWith(
    _$ChatRoomImpl value,
    $Res Function(_$ChatRoomImpl) then,
  ) = __$$ChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String roomId,
    String participantName,
    String participantAvatar,
    bool isOnline,
    bool gymShareEnabled,
    bool scheduleShareEnabled,
    bool detailShareEnabled,
    List<ChatMessage> messages,
    List<DateProposal> proposals,
    List<String> quickReplies,
  });
}

/// @nodoc
class __$$ChatRoomImplCopyWithImpl<$Res>
    extends _$ChatRoomCopyWithImpl<$Res, _$ChatRoomImpl>
    implements _$$ChatRoomImplCopyWith<$Res> {
  __$$ChatRoomImplCopyWithImpl(
    _$ChatRoomImpl _value,
    $Res Function(_$ChatRoomImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? participantName = null,
    Object? participantAvatar = null,
    Object? isOnline = null,
    Object? gymShareEnabled = null,
    Object? scheduleShareEnabled = null,
    Object? detailShareEnabled = null,
    Object? messages = null,
    Object? proposals = null,
    Object? quickReplies = null,
  }) {
    return _then(
      _$ChatRoomImpl(
        roomId:
            null == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                    as String,
        participantName:
            null == participantName
                ? _value.participantName
                : participantName // ignore: cast_nullable_to_non_nullable
                    as String,
        participantAvatar:
            null == participantAvatar
                ? _value.participantAvatar
                : participantAvatar // ignore: cast_nullable_to_non_nullable
                    as String,
        isOnline:
            null == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                    as bool,
        gymShareEnabled:
            null == gymShareEnabled
                ? _value.gymShareEnabled
                : gymShareEnabled // ignore: cast_nullable_to_non_nullable
                    as bool,
        scheduleShareEnabled:
            null == scheduleShareEnabled
                ? _value.scheduleShareEnabled
                : scheduleShareEnabled // ignore: cast_nullable_to_non_nullable
                    as bool,
        detailShareEnabled:
            null == detailShareEnabled
                ? _value.detailShareEnabled
                : detailShareEnabled // ignore: cast_nullable_to_non_nullable
                    as bool,
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        proposals:
            null == proposals
                ? _value._proposals
                : proposals // ignore: cast_nullable_to_non_nullable
                    as List<DateProposal>,
        quickReplies:
            null == quickReplies
                ? _value._quickReplies
                : quickReplies // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomImpl implements _ChatRoom {
  const _$ChatRoomImpl({
    required this.roomId,
    required this.participantName,
    required this.participantAvatar,
    required this.isOnline,
    required this.gymShareEnabled,
    required this.scheduleShareEnabled,
    required this.detailShareEnabled,
    final List<ChatMessage> messages = const <ChatMessage>[],
    final List<DateProposal> proposals = const <DateProposal>[],
    final List<String> quickReplies = const <String>[],
  }) : _messages = messages,
       _proposals = proposals,
       _quickReplies = quickReplies;

  factory _$ChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomImplFromJson(json);

  @override
  final String roomId;
  @override
  final String participantName;
  @override
  final String participantAvatar;
  @override
  final bool isOnline;
  @override
  final bool gymShareEnabled;
  @override
  final bool scheduleShareEnabled;
  @override
  final bool detailShareEnabled;
  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<DateProposal> _proposals;
  @override
  @JsonKey()
  List<DateProposal> get proposals {
    if (_proposals is EqualUnmodifiableListView) return _proposals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proposals);
  }

  final List<String> _quickReplies;
  @override
  @JsonKey()
  List<String> get quickReplies {
    if (_quickReplies is EqualUnmodifiableListView) return _quickReplies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickReplies);
  }

  @override
  String toString() {
    return 'ChatRoom(roomId: $roomId, participantName: $participantName, participantAvatar: $participantAvatar, isOnline: $isOnline, gymShareEnabled: $gymShareEnabled, scheduleShareEnabled: $scheduleShareEnabled, detailShareEnabled: $detailShareEnabled, messages: $messages, proposals: $proposals, quickReplies: $quickReplies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.participantName, participantName) ||
                other.participantName == participantName) &&
            (identical(other.participantAvatar, participantAvatar) ||
                other.participantAvatar == participantAvatar) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.gymShareEnabled, gymShareEnabled) ||
                other.gymShareEnabled == gymShareEnabled) &&
            (identical(other.scheduleShareEnabled, scheduleShareEnabled) ||
                other.scheduleShareEnabled == scheduleShareEnabled) &&
            (identical(other.detailShareEnabled, detailShareEnabled) ||
                other.detailShareEnabled == detailShareEnabled) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(
              other._proposals,
              _proposals,
            ) &&
            const DeepCollectionEquality().equals(
              other._quickReplies,
              _quickReplies,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    roomId,
    participantName,
    participantAvatar,
    isOnline,
    gymShareEnabled,
    scheduleShareEnabled,
    detailShareEnabled,
    const DeepCollectionEquality().hash(_messages),
    const DeepCollectionEquality().hash(_proposals),
    const DeepCollectionEquality().hash(_quickReplies),
  );

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      __$$ChatRoomImplCopyWithImpl<_$ChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomImplToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom({
    required final String roomId,
    required final String participantName,
    required final String participantAvatar,
    required final bool isOnline,
    required final bool gymShareEnabled,
    required final bool scheduleShareEnabled,
    required final bool detailShareEnabled,
    final List<ChatMessage> messages,
    final List<DateProposal> proposals,
    final List<String> quickReplies,
  }) = _$ChatRoomImpl;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) =
      _$ChatRoomImpl.fromJson;

  @override
  String get roomId;
  @override
  String get participantName;
  @override
  String get participantAvatar;
  @override
  bool get isOnline;
  @override
  bool get gymShareEnabled;
  @override
  bool get scheduleShareEnabled;
  @override
  bool get detailShareEnabled;
  @override
  List<ChatMessage> get messages;
  @override
  List<DateProposal> get proposals;
  @override
  List<String> get quickReplies;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
