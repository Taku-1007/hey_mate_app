import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_slot.freezed.dart';
part 'schedule_slot.g.dart';

@freezed
class ScheduleSlot with _$ScheduleSlot {
  const factory ScheduleSlot({
    required String dayOfWeek,
    required bool morningAvailable,
    required bool nightAvailable,
  }) = _ScheduleSlot;

  factory ScheduleSlot.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSlotFromJson(json);
}
