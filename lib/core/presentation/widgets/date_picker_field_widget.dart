import 'package:flutter/material.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';

/// A stateless widget that displays a date picker field.
///
/// This widget:
/// - Allows users to select a date via a `showDatePicker` dialog.
/// - Displays a hint text when no date is selected.
/// - Supports validation and error display.
/// - Can be enabled or disabled.
class DatePickerFieldWidget extends StatelessWidget {
  /// Creates a `DatePickerFieldWidget`.
  const DatePickerFieldWidget({
    required this.hintText,
    this.selectedDate,
    this.onDateSelected,
    this.enabled = true,
    this.showError = false,
    this.errorText,
    this.internalPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    super.key,
  });

  /// The placeholder text shown when no date is selected.
  final String hintText;

  /// The currently selected date.
  final DateTime? selectedDate;

  /// Callback triggered when a new date is selected.
  final void Function(DateTime?)? onDateSelected;

  /// Whether the field is enabled.
  final bool enabled;

  /// Whether to display an error message.
  final bool showError;

  /// The error message to display, if any.
  final String? errorText;

  /// Internal padding of the field.
  final EdgeInsetsGeometry internalPadding;

  /// Returns the text style for the selected date.
  TextStyle getFieldTextStyle() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: showError
            ? AppPalette.colorError
            : (enabled ? const Color(0xFF0D1A26) : const Color(0xFF5C6670)),
      );

  /// Returns the text style for the hint text.
  TextStyle getFieldHintTextStyle() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: enabled ? const Color(0xFFAEB3B7) : const Color(0xFF9F9F9F),
      );

  /// Returns the input border style.
  InputBorder getFieldBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: showError ? AppPalette.colorError : Colors.white,
        ),
      );

  /// Opens a date picker dialog and updates the selected date.
  Future<void> _pickDate(BuildContext context) async {
    if (!enabled) return;

    // Ensure no text field has focus before opening the DatePicker.
    FocusScope.of(context).requestFocus(FocusNode());

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      onDateSelected?.call(pickedDate);
    }

    // Remove focus after closing the DatePicker.
    Future.delayed(const Duration(milliseconds: 100), () {
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pickDate(context),
      child: AbsorbPointer(
        child: TextFormField(
          readOnly: true,
          style: getFieldTextStyle(),
          enabled: enabled,
          decoration: InputDecoration(
            errorText: showError ? errorText : null,
            errorMaxLines: 3,
            errorStyle: const TextStyle(
              color: AppPalette.colorError,
              fontSize: 14.0,
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
            suffixIcon: IconButton(
              icon: Icon(
                Icons.cake_outlined,
                color: showError
                    ? AppPalette.colorError
                    : (enabled
                        ? const Color(0xFFAEB3B7)
                        : const Color(0xFF5C6670)),
              ),
              onPressed: () => _pickDate(context),
            ),
          ),
          controller: TextEditingController(
            text: selectedDate != null
                ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                : '',
          ),
        ),
      ),
    );
  }
}
