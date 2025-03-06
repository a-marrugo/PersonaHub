import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_hub/core/shared/router/route_constants.dart';
import 'package:personal_hub/features/sign_up/presentation/pages/sign_up_page.dart';
import 'package:personal_hub/features/splash/presentation/pages/landing_page.dart';

/// Manages the application's routing configuration using `GoRouter`.
///
/// The `RouterApp` class defines the application's navigation structure,
/// specifying the initial route and the available routes within the app.
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

  /// Navigates to a new route, replacing the current one in the navigation stack.
  ///
  /// This function asynchronously pushes a new route using the provided [navigationConstant]
  /// and replaces the existing route in the stack.
  Future<void> navigate(
    BuildContext context, {
    required RouteConstants navigationConstant,
  }) async {
    await Future.microtask(
      () => context.pushReplacement(navigationConstant.path),
    );
  }
}
