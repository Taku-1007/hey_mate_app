import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class SettingsMenuRow extends StatelessWidget {
  const SettingsMenuRow({
    super.key,
    required this.label,
    required this.icon,
    required this.iconBackgroundColor,
    this.labelColor,
    this.showDivider = true,
    this.onTap,
  });

  final String label;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color? labelColor;
  final bool showDivider;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final resolvedLabelColor = labelColor ?? AppColors.textPrimary;

    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: resolvedLabelColor, size: 20),
          ),
          title: Text(
            label,
            style: TextStyle(
              color: resolvedLabelColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(
            Icons.chevron_right,
            color: AppColors.settingsChevron,
            size: 22,
          ),
        ),
        if (showDivider)
          const Divider(height: 1, thickness: 1, color: AppColors.dividerLight),
      ],
    );
  }
}
