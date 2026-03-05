import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/constants/app_text.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/primary_button.dart';
import 'package:hey_mate_app/presentation/components/primary_app_bar.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: PrimaryAppBar(
          title: 'アカウントを作成',
          centerTitle: true,
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          onBackPressed: () => context.go(AppRouteName.welcome),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Assets.images.twoWomenHighFive.image(
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  AppText.signupTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  AppText.signupSubtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  label: 'Googleで登録',
                  leading: Assets.icons.googleLogoPng.image(
                    width: 22,
                    height: 22,
                  ),
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.textPrimary,
                  borderColor: AppColors.border,
                  borderWidth: 1,
                  height: 56,
                  borderRadius: 28,
                  onPressed: () {},
                ),
                const SizedBox(height: 14),
                PrimaryButton(
                  label: 'Appleで登録',
                  leading: Assets.icons.appleLogo.image(width: 22, height: 22),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  height: 56,
                  borderRadius: 28,
                  onPressed: () {},
                ),
                const SizedBox(height: 14),
                PrimaryButton(
                  label: 'メールアドレスで登録',
                  leading: SvgPicture.asset(
                    Assets.icons.mail,
                    width: 22,
                    height: 22,
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  height: 56,
                  borderRadius: 28,
                  onPressed: () {},
                ),
                const SizedBox(height: 28),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: '${AppText.signupHasAccount} ',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      TextSpan(
                        text: AppText.signupHere,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  AppText.signupAgreement,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
