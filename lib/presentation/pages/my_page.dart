import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/primary_app_bar.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/my_page_top_mock_data.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/widgets/edit_profile_button.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/widgets/my_page_score_card.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/widgets/profile_summary_card.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/widgets/settings_menu_card.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  static const _primaryMenuItems = [
    MyPageTopMenuItemData(
      label: '所属ジム設定',
      icon: Icons.fitness_center_outlined,
      iconBackgroundColor: AppColors.iconTileBlue,
    ),
    MyPageTopMenuItemData(
      label: '信頼スコアの確認',
      icon: Icons.workspace_premium_outlined,
      iconBackgroundColor: AppColors.iconTilePurple,
    ),
  ];

  static const _secondaryMenuItems = [
    MyPageTopMenuItemData(
      label: 'ヘルプとサポート',
      icon: Icons.help_outline,
      iconBackgroundColor: AppColors.iconTileGray,
    ),
    MyPageTopMenuItemData(
      label: 'ログアウト',
      icon: Icons.logout,
      iconBackgroundColor: AppColors.iconTileRed,
      labelColor: AppColors.logoutRed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: PrimaryAppBar(
          title: 'マイページ',
          centerTitle: true,
          showBackButton: false,
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColors.textSecondary,
                size: 24,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 28),
          child: Column(
            children: [
              const ProfileSummaryCard(name: myPageTopName),
              const SizedBox(height: 18),
              EditProfileButton(
                onPressed: () => context.push(AppRouteName.profileDetail),
              ),
              const SizedBox(height: 32),
              const MyPageScoreCard(
                score: myPageTopTrustScore,
                qualityLabel: myPageTopScoreQuality,
                description: myPageTopScoreDescription,
              ),
              const SizedBox(height: 22),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(
                    'アカウント設定',
                    style: TextStyle(
                      color: AppColors.footerText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const SettingsMenuCard(items: _primaryMenuItems),
              const SizedBox(height: 16),
              const SettingsMenuCard(items: _secondaryMenuItems),
              const SizedBox(height: 42),
              const Text(
                myPageTopVersion,
                style: TextStyle(
                  color: AppColors.footerText,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                myPageTopFooterCaption,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.footerText,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
