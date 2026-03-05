import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';

class PartnerCardData {
  const PartnerCardData({
    required this.photo,
    required this.statusLabel,
    required this.trustScore,
    required this.achievements,
    required this.focusParts,
    required this.scheduleNote,
    required this.todayNote,
    required this.name,
    required this.age,
    required this.lastLogin,
    required this.gym,
    required this.benchPress,
    required this.frequency,
    required this.motivation,
  });

  final AssetGenImage photo;
  final String statusLabel;
  final int trustScore;
  final int achievements;
  final List<String> focusParts;
  final String scheduleNote;
  final String todayNote;
  final String name;
  final int age;
  final String lastLogin;
  final String gym;
  final String benchPress;
  final String frequency;
  final String motivation;
}

class PartnerCard extends StatelessWidget {
  const PartnerCard({super.key, required this.data});

  final PartnerCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PhotoSection(data: data),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProfileHeader(data: data),
                const SizedBox(height: 12),
                _InfoRow(icon: Icons.place, label: data.gym),
                const SizedBox(height: 8),
                _InfoRow(icon: Icons.fitness_center, label: data.benchPress),
                const SizedBox(height: 8),
                _InfoRow(icon: Icons.calendar_today, label: data.frequency),
                const SizedBox(height: 8),
                _InfoRow(icon: Icons.flag, label: data.motivation),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PhotoSection extends StatelessWidget {
  const _PhotoSection({required this.data});
  final PartnerCardData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: data.photo.image(
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 12,
          left: 12,
          right: 12,
          child: Row(
            children: [
              PillChip(
                label: data.statusLabel,
                bgColor: AppColors.primaryLight,
                fgColor: Colors.white,
                icon: Icons.circle,
                iconSize: 10,
              ),
              const SizedBox(width: 8),
              PillChip(
                label: '信頼スコア ${data.trustScore}',
                bgColor: Colors.white,
                fgColor: AppColors.textPrimary,
                borderColor: AppColors.border,
                icon: Icons.verified_user,
                iconColor: Colors.green,
              ),
              const SizedBox(width: 8),
              PillChip(
                label: '実績 ${data.achievements}回',
                bgColor: Colors.white,
                fgColor: AppColors.textPrimary,
                borderColor: AppColors.border,
              ),
            ],
          ),
        ),
        Positioned(
          left: 12,
          bottom: 16,
          right: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.scheduleNote,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                data.todayNote,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    data.focusParts
                        .map(
                          (part) => PillChip(
                            label: part,
                            bgColor: Colors.white.withValues(alpha: 0.9),
                            fgColor: AppColors.primary,
                            borderColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.data});
  final PartnerCardData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${data.name} (${data.age})',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.schedule,
              size: 16,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 6),
            Text(
              data.lastLogin,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}

class PillChip extends StatelessWidget {
  const PillChip({
    super.key,
    required this.label,
    required this.bgColor,
    required this.fgColor,
    this.borderColor,
    this.icon,
    this.iconColor,
    this.iconSize = 14,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
  });

  final String label;
  final Color bgColor;
  final Color fgColor;
  final Color? borderColor;
  final IconData? icon;
  final Color? iconColor;
  final double iconSize;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderColor ?? Colors.transparent),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: iconSize, color: iconColor ?? fgColor),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              color: fgColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
