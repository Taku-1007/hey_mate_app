import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/components/hm_bottom_nav.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';
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
    initialLocation: AppRouteName.welcome,
    routes: [
      GoRoute(
        path: AppRouteName.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRouteName.signup,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: AppRouteName.ageCheck,
        builder: (context, state) => const AgeCheckScreen(),
      ),
      GoRoute(
        path: AppRouteName.birthdate,
        builder: (context, state) => const BirthdateScreen(),
      ),
      GoRoute(
        path: AppRouteName.guideline,
        builder: (context, state) => const GuidelineScreen(),
      ),
      GoRoute(
        path: AppRouteName.kycSteps,
        builder: (context, state) => const KycStepsScreen(),
      ),
      GoRoute(
        path: AppRouteName.kycUpload,
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
            path: AppRouteName.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRouteName.matches,
            builder: (context, state) => const MatchListScreen(),
          ),
          GoRoute(
            path: AppRouteName.chat,
            builder:
                (context, state) =>
                    ChatScreen(roomId: state.pathParameters['id']!),
          ),
          GoRoute(
            path: AppRouteName.mypage,
            builder: (context, state) => const MypageScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRouteName.profile,
        builder:
            (context, state) =>
                ProfileDetailScreen(userId: state.pathParameters['id']!),
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
