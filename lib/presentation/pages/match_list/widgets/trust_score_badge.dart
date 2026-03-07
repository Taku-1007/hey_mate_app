import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/match_list/match_list_models.dart';

class TrustScoreBadge extends StatelessWidget {
  const TrustScoreBadge({
    super.key,
    required this.trustScore,
    required this.tone,
  });

  final int trustScore;
  final ScoreBadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final colorSet = _scoreBadgeColors(tone);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colorSet.background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.verified_user_outlined,
            size: 14,
            color: colorSet.foreground,
          ),
          const SizedBox(width: 4),
          Text(
            '$trustScore%',
            style: TextStyle(
              color: colorSet.foreground,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

ScoreBadgeColors _scoreBadgeColors(ScoreBadgeTone tone) {
  switch (tone) {
    case ScoreBadgeTone.success:
      return ScoreBadgeColors(
        background: AppColors.success.withValues(alpha: 0.16),
        foreground: AppColors.successForeground,
      );
    case ScoreBadgeTone.info:
      return ScoreBadgeColors(
        background: AppColors.primary.withValues(alpha: 0.16),
        foreground: AppColors.infoForeground,
      );
    case ScoreBadgeTone.warning:
      return ScoreBadgeColors(
        background: AppColors.accentYellow.withValues(alpha: 0.22),
        foreground: AppColors.warningForeground,
      );
  }
}
