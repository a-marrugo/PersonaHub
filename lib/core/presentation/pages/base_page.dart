import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.child,
    this.appBarTitle,
    this.appBarActions,
    this.bottomNavigationBar,
    this.backgroundColor,
  });

  /// Child to render inside base page
  final Widget child;

  /// Title for the AppBar
  final String? appBarTitle;

  /// Actions for the AppBar
  final List<Widget>? appBarActions;

  /// Bottom navigation bar
  final Widget? bottomNavigationBar;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppPalette.bgColor,
      appBar: appBarTitle != null
          ? AppBar(
              title: Text(appBarTitle!),
              actions: appBarActions,
              backgroundColor: Colors.white,
              elevation: 0,
            )
          : null,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
