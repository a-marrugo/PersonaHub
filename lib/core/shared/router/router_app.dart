// TODO: Move to file
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_hub/core/shared/router/route_constants.dart';
import 'package:personal_hub/features/splash/presentation/pages/splash_page.dart';

class RouterApp {
  /// Router configuration
  final goRouter = GoRouter(
    initialLocation: RouteConstants.splashPage.path,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );

  Future<void> navigate(
    BuildContext context, {
    required RouteConstants navigationConstant,
  }) async {
    await Future.microtask(
      () => context.pushReplacement(navigationConstant.path),
    );
  }
}
