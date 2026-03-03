import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/components/hm_bottom_nav.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';
import 'package:hey_mate_app/presentation/screens/welcome_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: AppRouteName.welcome,
    routes: [
      GoRoute(
        path: AppRouteName.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          final loc = state.uri.toString();
          final index = _indexForLocation(loc);
          return Scaffold(
            body: child,
            bottomNavigationBar: HmBottomNav(
              currentIndex: index,
              onTap: (i) {
                final loc = _locationForIndex(i);
                if (loc != state.uri.toString()) {
                  context.go(loc);
                }
              },
            ),
          );
        },
        routes: [],
      ),
    ],
  );
}

int _indexForLocation(String location) {
  if (location.startsWith(AppRouteName.home)) return 0;
  if (location.startsWith(AppRouteName.matches)) return 1;
  if (location.startsWith(AppRouteName.chatBase)) return 2;
  if (location.startsWith(AppRouteName.mypage)) return 3;
  return 0;
}

String _locationForIndex(int index) {
  switch (index) {
    case 0:
      return AppRouteName.home;
    case 1:
      return AppRouteName.matches;
    case 2:
      return '${AppRouteName.chatBase}/room1';
    case 3:
      return AppRouteName.mypage;
    default:
      return AppRouteName.home;
  }
}
