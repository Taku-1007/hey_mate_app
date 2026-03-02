import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextTheme textTheme(BuildContext context) {
    final base = Theme.of(context).textTheme;
    return GoogleFonts.notoSansJpTextTheme(base).copyWith(
      headlineLarge: GoogleFonts.notoSansJp(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headlineMedium: GoogleFonts.notoSansJp(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleLarge: GoogleFonts.notoSansJp(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      titleMedium: GoogleFonts.notoSansJp(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.notoSansJp(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.notoSansJp(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.notoSansJp(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
      labelLarge: GoogleFonts.notoSansJp(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelMedium: GoogleFonts.notoSansJp(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelSmall: GoogleFonts.notoSansJp(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
