import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_step.freezed.dart';
part 'kyc_step.g.dart';

@freezed
class KycStep with _$KycStep {
  const factory KycStep({
    required int index,
    required String title,
    required String description,
    @Default(<String>[]) List<String> tips,
  }) = _KycStep;

  factory KycStep.fromJson(Map<String, dynamic> json) => _$KycStepFromJson(json);
}
