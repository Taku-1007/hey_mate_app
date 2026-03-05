import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

enum AppIconColor {
  primary,
  primaryLight,
  textPrimary,
  textSecondary,
  white,
  black,
  accentYellow,
  success,
  warning,
  backgroundColorBlack,
  background,
  border,
  glassSurface,
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.size = 24,
    this.color = AppIconColor.textPrimary,
    this.semanticLabel,
    this.textDirection,
  });

  final IconData icon;
  final double size;
  final AppIconColor color;
  final String? semanticLabel;
  final TextDirection? textDirection;

  Color get _resolvedColor {
    switch (color) {
      case AppIconColor.primary:
        return AppColors.primary;
      case AppIconColor.primaryLight:
        return AppColors.primaryLight;
      case AppIconColor.textPrimary:
        return AppColors.textPrimary;
      case AppIconColor.textSecondary:
        return AppColors.textSecondary;
      case AppIconColor.white:
        return AppColors.white;
      case AppIconColor.black:
        return AppColors.black;
      case AppIconColor.accentYellow:
        return AppColors.accentYellow;
      case AppIconColor.success:
        return AppColors.success;
      case AppIconColor.warning:
        return AppColors.warning;
      case AppIconColor.backgroundColorBlack:
        return AppColors.backgroundColorBlack;
      case AppIconColor.background:
        return AppColors.background;
      case AppIconColor.border:
        return AppColors.border;
      case AppIconColor.glassSurface:
        return AppColors.glassSurface;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: _resolvedColor,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }
}
