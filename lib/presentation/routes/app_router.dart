import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/pages/app_shell_page.dart';
import 'package:hey_mate_app/presentation/pages/home_page.dart';
import 'package:hey_mate_app/presentation/pages/match_list_page.dart';
import 'package:hey_mate_app/presentation/pages/my_page.dart';
import 'package:hey_mate_app/presentation/pages/profile_detail_page.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';
import 'package:hey_mate_app/presentation/screens/signup_page.dart'
    show SignupPage;
import 'package:hey_mate_app/presentation/screens/welcome_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'homeTab');
final _matchesNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'matchesTab',
);
final _myPageNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'myPageTab',
);

GoRouter createRouter() {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRouteName.welcome,
    routes: [
      GoRoute(
        path: AppRouteName.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRouteName.signup,
        builder: (context, state) => const SignupPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                AppShellPage(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                path: AppRouteName.home,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _matchesNavigatorKey,
            routes: [
              GoRoute(
                path: AppRouteName.matches,
                builder: (context, state) => const MatchListPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _myPageNavigatorKey,
            routes: [
              GoRoute(
                path: AppRouteName.myPage,
                builder: (context, state) => const MyPage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRouteName.profileDetail,
        builder: (context, state) => const ProfileDetailPage(),
      ),
    ],
  );
}
