import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/components/hm_bottom_nav.dart';
import 'package:hey_mate_app/presentation/screens/age_check_screen.dart';
import 'package:hey_mate_app/presentation/screens/birthdate_screen.dart';
import 'package:hey_mate_app/presentation/screens/chat_screen.dart';
import 'package:hey_mate_app/presentation/screens/guideline_screen.dart';
import 'package:hey_mate_app/presentation/screens/home_screen.dart';
import 'package:hey_mate_app/presentation/screens/kyc_steps_screen.dart';
import 'package:hey_mate_app/presentation/screens/kyc_upload_screen.dart';
import 'package:hey_mate_app/presentation/screens/match_list_screen.dart';
import 'package:hey_mate_app/presentation/screens/mypage_screen.dart';
import 'package:hey_mate_app/presentation/screens/profile_detail_screen.dart';
import 'package:hey_mate_app/presentation/screens/signup_screen.dart';
import 'package:hey_mate_app/presentation/screens/welcome_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/welcome',
    routes: [
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/age-check',
        builder: (context, state) => const AgeCheckScreen(),
      ),
      GoRoute(
        path: '/birthdate',
        builder: (context, state) => const BirthdateScreen(),
      ),
      GoRoute(
        path: '/guideline',
        builder: (context, state) => const GuidelineScreen(),
      ),
      GoRoute(
        path: '/kyc/steps',
        builder: (context, state) => const KycStepsScreen(),
      ),
      GoRoute(
        path: '/kyc/upload',
        builder: (context, state) => const KycUploadScreen(),
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
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/matches',
            builder: (context, state) => const MatchListScreen(),
          ),
          GoRoute(
            path: '/chat/:id',
            builder: (context, state) =>
                ChatScreen(roomId: state.pathParameters['id']!),
          ),
          GoRoute(
            path: '/mypage',
            builder: (context, state) => const MypageScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/profile/:id',
        builder: (context, state) =>
            ProfileDetailScreen(userId: state.pathParameters['id']!),
      ),
    ],
  );
}

int _indexForLocation(String location) {
  if (location.startsWith('/home')) return 0;
  if (location.startsWith('/matches')) return 1;
  if (location.startsWith('/chat')) return 2;
  if (location.startsWith('/mypage')) return 3;
  return 0;
}

String _locationForIndex(int index) {
  switch (index) {
    case 0:
      return '/home';
    case 1:
      return '/matches';
    case 2:
      return '/chat/room1';
    case 3:
      return '/mypage';
    default:
      return '/home';
  }
}
