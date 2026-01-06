import 'package:tdd_practice_flutter/core/utils/validators/password_validator/password_validation_result.dart';

class PasswordValidator {
  static final _upperCaseRegex = RegExp(r'[A-Z]');
  static final _numberRegex = RegExp(r'\d');
  static final _specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  static PasswordValidationResult isValid(String password) {
    if (password.length < 8) {
      return const PasswordTooShort();
    }

    if (!_upperCaseRegex.hasMatch(password)) {
      return const PasswordMissingUppercase();
    }

    if (!_numberRegex.hasMatch(password)) {
      return const PasswordMissingNumber();
    }

    if (!_specialCharRegex.hasMatch(password)) {
      return const PasswordMissingSpecialChar();
    }

    return const PasswordValid();
  }
}
