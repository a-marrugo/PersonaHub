import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/presentation/styles/font_family.dart';
import 'package:personal_hub/core/presentation/widgets/date_picker_field_widget.dart';
import 'package:personal_hub/core/presentation/widgets/text_button_widget.dart';
import 'package:personal_hub/core/presentation/widgets/text_field_widget.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';
import 'package:personal_hub/features/sign_up/application/providers/provider.dart';
import 'package:personal_hub/features/sign_up/presentation/mixins/user_register_mixin.dart';

/// A stateful widget representing the sign-up form.
///
/// This form includes:
/// - Name and last name input fields.
/// - A date picker for selecting a birthday.
/// - Validation logic for user input.
/// - A register button that enables when the form is valid.
class SignUpFormWidget extends ConsumerStatefulWidget {
  /// Creates an instance of `SignUpFormWidget`.
  const SignUpFormWidget({super.key});

  @override
  ConsumerState<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends ConsumerState<SignUpFormWidget>
    with UserRegisterMixin {
  final FocusNode _focusName = FocusNode();
  final FocusNode _focusLastName = FocusNode();

  @override
  void dispose() {
    _focusName.dispose();
    _focusLastName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final newUser = ref.watch(userRegisterProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('${context.l10n.name}*'),
        TextFieldWidget(
          controller: nameController,
          focusNode: _focusName,
          onEditingComplete: _focusLastName.requestFocus,
          hintText: context.l10n.yourName,
          showError: validName().$1,
          errorText: validName().$2,
          onChanged: (_) {},
        ),
        const SizedBox(height: 22),
        _buildLabel('${context.l10n.lastName}*'),
        TextFieldWidget(
          controller: lastNameController,
          focusNode: _focusLastName,
          textInputAction: TextInputAction.done,
          onEditingComplete: () => FocusScope.of(context).unfocus(),
          hintText: context.l10n.yourLastName,
          showError: validLastName().$1,
          errorText: validLastName().$2,
          onChanged: (_) {},
        ),
        const SizedBox(height: 22),
        _buildLabel(context.l10n.birthday),
        DatePickerFieldWidget(
          hintText: context.l10n.yourBirthday,
          showError: isValidBirthday().$1,
          errorText: isValidBirthday().$2,
          selectedDate: newUser.birthday,
          onDateSelected: validateBirthdayListener,
        ),
        const SizedBox(height: 55),
        TextButtonWidget(
          onPressed: isValidForm() ? () {} : null,
          text: context.l10n.register,
          textColor: AppPalette.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${context.l10n.acceptTerms} ',
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
                TextSpan(
                  text: context.l10n.termsPolicy,
                  style: const TextStyle(
                    color: AppPalette.primaryColor,
                    fontSize: 14,
                    fontWeight: FontW.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        text,
        style: const TextStyle(
          color: AppPalette.primaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
