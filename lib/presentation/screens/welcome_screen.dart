import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/constants/app_text.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/core/theme/app_typography.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';
import 'package:hey_mate_app/presentation/components/primary_button.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images.sampleImage.path,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.4)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(AppText.appName, style: AppTypography.heroTitle),
                        const SizedBox(height: 120),
                        Text(
                          AppText.welcomeScreenTitle,
                          style: AppTypography.title,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          AppText.welcomeScreenSubTitle,
                          style: AppTypography.subtitle,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      PrimaryButton(
                        label: AppText.startApp,
                        foregroundColor: AppColors.black,
                        onPressed:
                            () => context.pushReplacement(AppRouteName.signup),
                        height: 64,
                        borderRadius: 32,
                      ),
                      const SizedBox(height: 16),
                      PrimaryButton(
                        label: AppText.login,
                        // ignore: deprecated_member_use
                        backgroundColor: AppColors.glassSurface.withValues(
                          alpha: 0.25,
                        ),
                        foregroundColor: Colors.white,
                        // ignore: deprecated_member_use
                        borderColor: Colors.white.withOpacity(0.35),
                        borderWidth: 1,
                        overlayColor: Colors.white24,
                        height: 64,
                        borderRadius: 32,
                        onPressed:
                            () => context.pushReplacement(AppRouteName.signup),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.welcomeScreenAgreement,
                        style: AppTypography.subtitle2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
