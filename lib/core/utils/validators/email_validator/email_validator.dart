import 'package:tdd_practice_flutter/core/utils/validators/email_validator/email_validator_result.dart';

class EmailValidator {
  static final _emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  static EmailValidatorResult isValid(String email) {
    if (!_emailRegex.hasMatch(email)) {
      return const InvalidEmailAddress();
    }

    return ValidEmail();
  }
}
