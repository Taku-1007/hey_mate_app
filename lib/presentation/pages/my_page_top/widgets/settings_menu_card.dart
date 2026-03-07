import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/my_page_top_mock_data.dart';
import 'package:hey_mate_app/presentation/pages/my_page_top/widgets/settings_menu_row.dart';

class SettingsMenuCard extends StatelessWidget {
  const SettingsMenuCard({super.key, required this.items});

  final List<MyPageTopMenuItemData> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          for (var i = 0; i < items.length; i++)
            SettingsMenuRow(
              label: items[i].label,
              icon: items[i].icon,
              iconBackgroundColor: items[i].iconBackgroundColor,
              labelColor: items[i].labelColor,
              showDivider: i != items.length - 1,
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
