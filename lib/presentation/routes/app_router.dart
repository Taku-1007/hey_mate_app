import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/pages/home_page.dart';
import 'package:hey_mate_app/presentation/pages/match_list_page.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';
import 'package:hey_mate_app/presentation/screens/signup_page.dart'
    show SignupPage;
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
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: AppRouteName.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRouteName.matches,
        builder: (context, state) => const MatchListPage(),
      ),
    ],
  );
}
