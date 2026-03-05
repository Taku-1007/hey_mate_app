import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.selectedColor,
    this.unselectedColor,
    this.backgroundColor,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? backgroundColor;

  static const _items = [
    _NavItem(icon: Icons.search, label: 'Hey Mate'),
    _NavItem(icon: Icons.event_note, label: '予定'),
    _NavItem(icon: Icons.chat_bubble_outline, label: 'メッセージ'),
    _NavItem(icon: Icons.person_outline, label: 'マイページ'),
  ];

  @override
  Widget build(BuildContext context) {
    final Color selected = selectedColor ?? AppColors.primary;
    final Color unselected = unselectedColor ?? AppColors.textSecondary;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      elevation: 0,
      selectedItemColor: selected,
      unselectedItemColor: unselected,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      items:
          _items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.label,
                ),
              )
              .toList(),
    );
  }
}

class _NavItem {
  const _NavItem({required this.icon, required this.label});
  final IconData icon;
  final String label;
}
