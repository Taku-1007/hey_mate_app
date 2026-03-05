import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.leading,
    this.height = 52,
    this.backgroundColor,
    this.foregroundColor,
    this.progressColor,
    this.borderRadius = 24,
    this.textStyle,
    this.overlayColor,
    this.borderColor,
    this.borderWidth = 0,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? icon;
  final Widget? leading;
  final double height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? progressColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color? overlayColor;
  final Color? borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final Widget? leadingIcon =
        leading ??
        (icon != null
            ? Icon(icon, size: 20, color: foregroundColor ?? Colors.white)
            : null);

    final child =
        isLoading
            ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  progressColor ?? foregroundColor ?? Colors.white,
                ),
              ),
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leadingIcon != null) ...[
                  leadingIcon,
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style:
                      textStyle ??
                      TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: foregroundColor ?? Colors.white,
                      ),
                ),
              ],
            );

    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: foregroundColor ?? Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth,
            ),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.all(overlayColor ?? Colors.white24),
        ),
        child: child,
      ),
    );
  }
}
