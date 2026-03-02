import 'package:freezed_annotation/freezed_annotation.dart';
import 'gym_suggestion.dart';
import 'kyc_step.dart';

part 'kyc_flow.freezed.dart';
part 'kyc_flow.g.dart';

@freezed
class KycFlow with _$KycFlow {
  const factory KycFlow({
    @Default(<KycStep>[]) List<KycStep> steps,
    @Default(<GymSuggestion>[]) List<GymSuggestion> nearbyGyms,
  }) = _KycFlow;

  factory KycFlow.fromJson(Map<String, dynamic> json) =>
      _$KycFlowFromJson(json);
}
