import 'package:freezed_annotation/freezed_annotation.dart';

part 'birthdate_flow.freezed.dart';
part 'birthdate_flow.g.dart';

@freezed
class BirthdateFlow with _$BirthdateFlow {
  const factory BirthdateFlow({
    required int currentStep,
    required int totalSteps,
    @Default(<int>[]) List<int> years,
    @Default(<int>[]) List<int> months,
    @Default(<int>[]) List<int> days,
  }) = _BirthdateFlow;

  factory BirthdateFlow.fromJson(Map<String, dynamic> json) =>
      _$BirthdateFlowFromJson(json);
}
