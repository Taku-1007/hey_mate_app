import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class MatchingActionButtons extends StatelessWidget {
  const MatchingActionButtons({
    super.key,
    this.onPass,
    this.onLater,
    this.onApply,
    this.ghostBackgroundColor,
    this.ghostBorderColor,
    this.ghostIconColor,
    this.ghostLabelColor,
    this.primaryBackgroundColor,
    this.primaryForegroundColor,
    this.primaryShadowColor,
    this.primarySubLabel,
  });

  final VoidCallback? onPass;
  final VoidCallback? onLater;
  final VoidCallback? onApply;
  final Color? ghostBackgroundColor;
  final Color? ghostBorderColor;
  final Color? ghostIconColor;
  final Color? ghostLabelColor;
  final Color? primaryBackgroundColor;
  final Color? primaryForegroundColor;
  final Color? primaryShadowColor;
  final String? primarySubLabel;

  @override
  Widget build(BuildContext context) {
    final ghostBg = ghostBackgroundColor ?? Colors.white;
    final ghostBorder = ghostBorderColor ?? AppColors.border;
    final ghostIcon = ghostIconColor ?? AppColors.textSecondary;
    final ghostLabel = ghostLabelColor ?? AppColors.textSecondary;
    final primaryBg = primaryBackgroundColor ?? AppColors.primary;
    final primaryFg = primaryForegroundColor ?? Colors.white;
    final primaryShadow = primaryShadowColor ?? AppColors.shadow;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _GhostActionButton(
          label: 'パス',
          icon: Icons.close,
          onTap: onPass,
          backgroundColor: ghostBg,
          borderColor: ghostBorder,
          iconColor: ghostIcon,
          labelColor: ghostLabel,
        ),
        _GhostActionButton(
          label: 'あとで',
          icon: Icons.schedule,
          onTap: onLater,
          backgroundColor: ghostBg,
          borderColor: ghostBorder,
          iconColor: ghostIcon,
          labelColor: ghostLabel,
        ),
        _PrimaryApplyButton(
          onTap: onApply,
          backgroundColor: primaryBg,
          foregroundColor: primaryFg,
          shadowColor: primaryShadow,
          subLabel: primarySubLabel,
        ),
      ],
    );
  }
}

class _GhostActionButton extends StatelessWidget {
  const _GhostActionButton({
    required this.label,
    required this.icon,
    this.onTap,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.labelColor,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
            border: Border.all(color: borderColor),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(32),
            onTap: onTap,
            child: Icon(icon, color: iconColor),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: labelColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _PrimaryApplyButton extends StatelessWidget {
  const _PrimaryApplyButton({
    this.onTap,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.shadowColor,
    this.subLabel,
  });

  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color shadowColor;
  final String? subLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          elevation: 4,
          borderRadius: BorderRadius.circular(28),
          shadowColor: shadowColor,
          child: Ink(
            height: 56,
            width: 170,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(28),
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.handshake, color: foregroundColor, size: 22),
                  const SizedBox(width: 8),
                  Text(
                    '合トレ申請',
                    style: TextStyle(
                      color: foregroundColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (subLabel != null)
          Text(
            subLabel!,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.3,
            ),
          ),
      ],
    );
  }
}
