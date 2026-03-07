import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/match_list/match_list_models.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/avatar_circle.dart';

class RecentMatchCard extends StatelessWidget {
  const RecentMatchCard({super.key, required this.item});

  final RecentMatchItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92,
      child: Column(
        children: [
          _RecentMatchAvatar(item: item),
          const SizedBox(height: 14),
          Text(
            item.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _RecentMatchAvatar extends StatelessWidget {
  const _RecentMatchAvatar({required this.item});

  final RecentMatchItem item;

  @override
  Widget build(BuildContext context) {
    final ringColor =
        item.hasHighlightRing ? AppColors.primary : AppColors.border;

    return SizedBox(
      width: 86,
      height: 86,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(shape: BoxShape.circle, color: ringColor),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: AvatarCircle(
                avatar: item.avatar,
                fallbackInitial: item.fallbackInitial,
                size: 76,
              ),
            ),
          ),
          if (item.isOnline)
            Positioned(
              right: 0,
              bottom: 2,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: AppColors.success,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white, width: 3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
