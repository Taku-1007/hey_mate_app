import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_gate.freezed.dart';
part 'age_gate.g.dart';

@freezed
class AgeGate with _$AgeGate {
  const factory AgeGate({
    required String title,
    required String question,
    required String description,
    required String primaryLabel,
    required String secondaryLabel,
  }) = _AgeGate;

  factory AgeGate.fromJson(Map<String, dynamic> json) =>
      _$AgeGateFromJson(json);
}
