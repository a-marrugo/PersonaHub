import 'package:flutter/material.dart';

class BackIconButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const BackIconButtonWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color(0xFFD8DADC),
          width: 1,
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
