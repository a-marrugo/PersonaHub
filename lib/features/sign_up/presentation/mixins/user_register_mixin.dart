// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/shared/l10n/l10n.dart';
import 'package:personal_hub/features/sign_up/application/providers/provider.dart';

/// Mixin to handle on form user update widget
///
/// Register handler
mixin UserRegisterMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  late TextEditingController nameController;
  late TextEditingController lastNameController;

  @override
  void initState() {
    nameController = TextEditingController()
      ..addListener(_validateNameListener);
    lastNameController = TextEditingController()
      ..addListener(_validateLastNameListener);
    super.initState();
  }

  // Listener for name controller
  void _validateNameListener() {
    ref.read(userRegisterProvider.notifier).update(
          (state) => state.copyWith(
            name: nameController.text,
          ),
        );
  }

  // Listener for lastName controller
  void _validateLastNameListener() {
    final lastName = lastNameController.text;
    ref.read(userRegisterProvider.notifier).update(
          (state) => state.copyWith(
            lastName: lastName,
          ),
        );
  }

  // Listener for birthday controller
  void validateBirthdayListener(DateTime? birthday) {
    ref.read(userRegisterProvider.notifier).update(
          (state) => state.copyWith(birthday: birthday),
        );
  }

  @override
  void dispose() {
    nameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }
}

/// Form validator for register
extension StepThreeFormValidator on UserRegisterMixin {
  /// Handle error message from name type service
  ///
  /// Returns true when there is an error
  (bool, String?) validName() {
    final newUser = ref.watch(userRegisterProvider);
    final name = nameController.text;

    if (name.isNotEmpty) {
      if (newUser.isValidName()) {
        return (false, null);
      } else {
        return (true, context.l10n.nameWrong);
      }
    } else {
      return (false, null);
    }
  }

  /// Handle error message from last name type service
  ///
  /// Returns true when there is an error
  (bool, String?) validLastName() {
    final newUser = ref.watch(userRegisterProvider);
    final lastName = lastNameController.text;

    if (lastName.isNotEmpty) {
      if (newUser.isValidLastName()) {
        return (false, null);
      } else {
        return (true, context.l10n.lastNameWrong);
      }
    } else {
      return (false, null);
    }
  }

  /// Handle error message from birthday
  ///
  /// Returns true when there is an error
  (bool, String?) isValidBirthday() {
    final newUser = ref.watch(userRegisterProvider);

    if (newUser.birthday != null) {
      if (newUser.isValidBirthday()) {
        return (false, null);
      } else {
        return (true, context.l10n.birthdayWrong);
      }
    } else {
      return (false, null);
    }
  }

  /// Handler state button submitted form register
  bool isValidForm() {
    final newUser = ref.watch(userRegisterProvider);
    return newUser.isValidFormRegister();
  }
}
