import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_hub/core/shared/constants/assets_constants.dart';

part 'user.freezed.dart';

/// Represents a user with basic personal information and validation methods.
@freezed
class User with _$User {
  /// Creates a [User] instance with optional name, last name, and birthday.
  const factory User({
    String? name,
    String? lastName,
    DateTime? birthday,
  }) = _User;

  const User._();

  /// Checks if [name] is valid based on a predefined regex pattern.
  bool isValidName() =>
      name != null &&
      name!.isNotEmpty &&
      RegExp(RegexConstants.regexName).hasMatch(name!);

  /// Checks if [lastName] is valid based on a predefined regex pattern.
  bool isValidLastName() =>
      lastName != null &&
      lastName!.isNotEmpty &&
      RegExp(RegexConstants.regexName).hasMatch(lastName!);

  /// Validates if [birthday] is not null and if the user is at least 18 years old.
  bool isValidBirthday() {
    if (birthday == null) return false;

    final now = DateTime.now();
    final age = now.year - birthday!.year;

    final hasBirthdayPassed = (now.month > birthday!.month) ||
        (now.month == birthday!.month && now.day >= birthday!.day);

    return age > 18 || (age == 18 && hasBirthdayPassed);
  }

  /// Checks if the user meets all validation criteria for registration.
  bool isValidFormRegister() {
    return isValidName() && isValidLastName() && isValidBirthday();
  }
}
