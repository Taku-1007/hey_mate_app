import 'package:go_router/go_router.dart';
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
    ],
  );
}
