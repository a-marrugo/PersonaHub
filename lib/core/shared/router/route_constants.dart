enum RouteConstants {
  splashPage(path: '/'),
  signUpPage(path: '/sign_up');

  const RouteConstants({required this.path});

  /// Path of the route
  final String path;
}
