import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/styles/font_family.dart';

/// A utility class for displaying snackbar in the application.
///
/// Provides methods to show error and success messages as floating snackbar.
///
/// - `showError`: Displays a red snackbar for error messages.
/// - `showSuccess`: Displays a green snackbar for success messages.
///
/// ### Usage:
/// ```dart
/// SnackbarHelper.showError(context, "An error occurred");
/// SnackbarHelper.showSuccess(context, "Operation successful");
/// ```
class SnackbarHelper {
  /// Shows an error snackbar with a red background.
  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontW.regular),
        ),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Shows a success snackbar with a green background.
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontW.regular),
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
