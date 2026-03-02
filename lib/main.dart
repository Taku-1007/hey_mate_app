import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/theme/app_theme.dart';
import 'package:hey_mate_app/presentation/routes/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = createRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'HeyMate',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
