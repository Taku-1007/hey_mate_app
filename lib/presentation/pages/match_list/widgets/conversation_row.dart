import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/match_list/match_list_models.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/avatar_circle.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/trust_score_badge.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/unread_count_badge.dart';

class ConversationRow extends StatelessWidget {
  const ConversationRow({super.key, required this.item});

  final ConversationPreviewItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AvatarCircle(
            avatar: item.avatar,
            fallbackInitial: item.fallbackInitial,
            size: 62,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TrustScoreBadge(
                      trustScore: item.trustScore,
                      tone: item.badgeTone,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  item.previewText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.tertiaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 52,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.timeLabel,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: AppColors.quaternaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 14),
                if (item.unreadCount > 0)
                  UnreadCountBadge(count: item.unreadCount),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
