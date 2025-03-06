// TODO: Move to file
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_hub/core/shared/router/route_constants.dart';
import 'package:personal_hub/features/sign_up/presentation/pages/sign_up_page.dart';
import 'package:personal_hub/features/splash/presentation/pages/landing_page.dart';

class RouterApp {
  /// Router configuration
  final goRouter = GoRouter(
    initialLocation: RouteConstants.splashPage.path,
    routes: [
      GoRoute(
        path: RouteConstants.splashPage.path,
        builder: (context, state) => const LandingPage(),
      ),
      GoRoute(
        path: RouteConstants.signUpPage.path,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SignUpPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
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
