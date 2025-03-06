import 'package:flutter/material.dart';

/// A custom back button widget with an outlined style.
///
/// This widget is a stateless button that displays a back arrow icon inside
/// an outlined button with rounded corners. It provides an optional callback
/// function when pressed.
class BackIconButtonWidget extends StatelessWidget {
  /// Creates a [BackIconButtonWidget] with an optional [onPressed] callback.
  const BackIconButtonWidget({super.key, this.onPressed});

  /// Callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color(0xFFD8DADC),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: EdgeInsets.zero,
        minimumSize: const Size(48, 48),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 24,
      ),
    );
  }
}
