import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class HeaderActionButton extends StatelessWidget {
  const HeaderActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.textSecondary,
          side: const BorderSide(color: AppColors.border),
        ),
        icon: Icon(icon, size: 28),
      ),
    );
  }
}
