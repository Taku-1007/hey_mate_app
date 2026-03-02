import 'package:flutter/material.dart';

class HmBottomNav extends StatelessWidget {
  const HmBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.explore_outlined), label: 'ホーム'),
        NavigationDestination(icon: Icon(Icons.favorite_outline), label: 'マッチ'),
        NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: 'チャット'),
        NavigationDestination(icon: Icon(Icons.person_outline), label: 'マイページ'),
      ],
    );
  }
}
