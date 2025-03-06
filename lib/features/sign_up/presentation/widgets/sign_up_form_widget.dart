import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_hub/core/presentation/styles/app_palette.dart';
import 'package:personal_hub/core/presentation/widgets/text_field_widget.dart';
import 'package:personal_hub/core/presentation/widgets/text_button_widget.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({super.key});

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('Nombre*'),
        TextFieldWidget(
          focusNode: _focusName,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _focusLastName.requestFocus(),
          hintText: 'Tu nombre',
          formatters: [
            LengthLimitingTextInputFormatter(20),
          ],
          onChanged: (String) {},
        ),
        const SizedBox(height: 22),
        _buildLabel('Apellido*'),
        TextFieldWidget(
          focusNode: _focusLastName,
          textInputAction: TextInputAction.done,
          onEditingComplete: () => FocusScope.of(context).unfocus(),
          hintText: 'Tu apellido',
          formatters: [
            LengthLimitingTextInputFormatter(20),
          ],
          onChanged: (String) {},
        ),
        const SizedBox(height: 55),
        TextButtonWidget(
          onPressed: () => {},
          text: 'Registrar',
          textColor: AppPalette.primaryColor,
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
