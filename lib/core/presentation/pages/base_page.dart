import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.child,
    this.appBarTitle,
    this.appBarActions,
    this.leading,
    this.bottomNavigationBar,
    this.backgroundColor,
  });

  /// Child to render inside base page
  final Widget child;

  /// Title for the AppBar
  final String? appBarTitle;

  /// Actions for the AppBar
  final List<Widget>? appBarActions;

  /// Actions for the AppBar
  final Widget? leading;

  /// Bottom navigation bar
  final Widget? bottomNavigationBar;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppPalette.bgColor,
      appBar: appBarTitle != null || leading != null
          ? AppBar(
              title: Text(appBarTitle ?? ''),
              actions: appBarActions,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: leading,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            )
          : null,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
