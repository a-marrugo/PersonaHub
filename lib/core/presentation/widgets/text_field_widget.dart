import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';

/// A customizable text field widget.
class TextFieldWidget extends StatelessWidget {
  /// Constructor for [TextFieldWidget].
  const TextFieldWidget({
    required this.onChanged,
    required this.hintText,
    this.initialValue,
    this.formatters,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.enabled = true,
    this.keyboardType,
    this.focusNode,
    this.maxLines = 1,
    this.obscureText = false,
    this.onEditingComplete,
    this.showError = false,
    this.errorText,
    this.internalPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    super.key,
  });

  //// Called when the user initiates a change to the TextField's value: when they have inserted or deleted text.
  final void Function(String)? onChanged;

  //// Hint text to show on field empty
  final String hintText;

  //// Input initial value
  final String? initialValue;

  //// Max lines for [FormField]
  final int? maxLines;

  //// Creates a [FormField] that contains a [TextField].
  final bool enabled;

  //// Text that appears below the [InputDecorator.child] and the border.
  //// If non-null, the border's color animates to red and the ´helperText´ is not shown.
  final String? errorText;

  //// When a [controller] is specified, [initialValue] must be null (the default)
  //// If [controller] is null, then a [TextEditingController] will
  //// be constructed automatically and its text will be initialized to [initialValue] or the empty string.
  final void Function()? onEditingComplete;

  //// Creates a [FormField] that contains a [TextField].
  final TextInputAction? textInputAction;

  //// When a [controller] is specified, [initialValue] must be null (the default)
  //// If [controller] is null, then a [TextEditingController] will be constructed
  //// automatically and its text will be initialized to [initialValue] or the empty string.
  final FocusNode? focusNode;

  //// List of formatters to handle user input on field
  final List<TextInputFormatter>? formatters;

  //// Internal padding on text field box
  final EdgeInsetsGeometry internalPadding;

  //// Creates a [FormField] that contains a [TextField].
  final bool obscureText;

  //// Show error text in [TextField]
  final bool showError;

  //// Controls the text being edited.
  final TextEditingController? controller;

  //// If [controller] is null, then a [TextEditingController] will be constructed automatically
  //// and its text will be initialized to [initialValue] or the empty string.
  final TextInputType? keyboardType;

  /// Get test style for text field
  TextStyle getFieldTextStyle() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: showError
            ? AppPalette.colorError
            : (enabled ? const Color(0xFF0D1A26) : const Color(0xFF5C6670)),
      );

  /// Get test style for text field
  TextStyle getFieldHintTextStyle() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: enabled ? const Color(0xFFAEB3B7) : const Color(0xFF9F9F9F),
      );

  /// Get default Input field style
  InputBorder getFieldBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: showError ? AppPalette.colorError : Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      maxLines: maxLines,
      keyboardType: keyboardType,
      onEditingComplete: onEditingComplete,
      style: getFieldTextStyle(),
      enabled: enabled,
      focusNode: focusNode,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        errorText: showError ? errorText : null,
        errorMaxLines: 3,
        errorStyle: const TextStyle(
          color: AppPalette.colorError,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        fillColor: enabled ? Colors.white : const Color(0xFFE9EBEC),
        hintStyle: getFieldHintTextStyle(),
        hintText: hintText,
        isDense: true,
        contentPadding: internalPadding,
        border: getFieldBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppPalette.accentColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD8DADC)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE9EBEC),
          ),
        ),
        filled: true,
      ),
      onChanged: onChanged,
    );
  }
}
