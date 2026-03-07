import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/app_bottom_nav.dart';

class AppShellPage extends StatelessWidget {
  const AppShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: AppBottomNav(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          if (index == navigationShell.currentIndex) {
            return;
          }

          navigationShell.goBranch(index);
        },
        backgroundColor: AppColors.white,
        selectedColor: AppColors.primary,
        unselectedColor: AppColors.textSecondary,
      ),
    );
  }
}
