import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_proposal.freezed.dart';
part 'date_proposal.g.dart';

@freezed
class DateProposal with _$DateProposal {
  const factory DateProposal({
    required String id,
    required String dateText,
    required String timeText,
  }) = _DateProposal;

  factory DateProposal.fromJson(Map<String, dynamic> json) =>
      _$DateProposalFromJson(json);
}
