import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_mate_app/core/constants/app_text_font.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class AppTypography {
  static TextTheme textTheme(BuildContext context) {
    final base = Theme.of(context).textTheme;
    const fontFamily = AppTextFont.primary;
    final themed = GoogleFonts.getTextTheme(fontFamily, base);

    return themed.copyWith(
      headlineLarge: themed.headlineLarge?.copyWith(
        fontSize: 60,
        fontWeight: FontWeight.w800,
        letterSpacing: -1.2,
        height: 1.05,
        color: AppColors.white,
        fontFamily: AppTextFont.display,
        shadows: const [
          Shadow(offset: Offset(0, 2), blurRadius: 6, color: Color(0x80000000)),
        ],
      ),
    );
  }

  static TextStyle get title => GoogleFonts.notoSansJp(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColors.white,
  );

  static TextStyle get subtitle => GoogleFonts.notoSansJp(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColors.white,
  );

  static TextStyle get subtitle2 => GoogleFonts.notoSansJp(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1.25,
    color: AppColors.white,
  );

  /// Hero title style used on the welcome screen (matches design spec).
  static TextStyle get heroTitle => GoogleFonts.lexend(
    fontSize: 60,
    fontWeight: FontWeight.w800,
    letterSpacing: -2,
    height: 1.05,
    color: AppColors.white,
    shadows: const [
      Shadow(offset: Offset(0, 2), blurRadius: 6, color: Color(0x80000000)),
    ],
  );
}
