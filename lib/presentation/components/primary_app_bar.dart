import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.showBackButton = true,
    this.onBackPressed,
    this.actions,
    this.leadingWidth,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = 0,
  });

  final String title;
  final bool centerTitle;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final double? leadingWidth;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color resolvedBackground =
        backgroundColor ??
        theme.appBarTheme.backgroundColor ??
        theme.colorScheme.primary;
    final Color resolvedForeground =
        foregroundColor ??
        theme.appBarTheme.foregroundColor ??
        theme.colorScheme.onPrimary;

    final double resolvedLeadingWidth = leadingWidth ?? kToolbarHeight;

    // If we want a perfectly centered title with only a back button,
    // add a spacer action of the same width as leading.
    final List<Widget>? balancedActions =
        actions ??
        (centerTitle && showBackButton
            ? [SizedBox(width: resolvedLeadingWidth)]
            : null);

    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: resolvedForeground,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: centerTitle,
      leadingWidth: resolvedLeadingWidth,
      leading:
          showBackButton
              ? IconButton(
                icon: SvgPicture.asset(
                  Assets.icons.leftArrowBack,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    resolvedForeground,
                    BlendMode.srcIn,
                  ),
                ),
                onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
              )
              : null,
      actions: balancedActions,
      backgroundColor: resolvedBackground,
      elevation: elevation,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.shadow,
    );
  }
}
