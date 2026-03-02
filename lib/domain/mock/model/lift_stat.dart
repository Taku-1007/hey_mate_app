import 'package:freezed_annotation/freezed_annotation.dart';

part 'lift_stat.freezed.dart';
part 'lift_stat.g.dart';

@freezed
class LiftStat with _$LiftStat {
  const factory LiftStat({
    required String label,
    required int valueKg,
    required int maxKg,
  }) = _LiftStat;

  factory LiftStat.fromJson(Map<String, dynamic> json) =>
      _$LiftStatFromJson(json);
}
