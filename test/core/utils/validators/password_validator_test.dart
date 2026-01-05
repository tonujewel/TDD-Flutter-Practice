import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice_flutter/core/utils/validators/password_validator.dart';

void main() {
  group('PasswordValidator', () {
    test('returns true for valid password', () {
      final result = PasswordValidator.isValid('Password1');

      expect(result, true);
    });

    test('returns false if password is less than 8 characters', () {
      final result = PasswordValidator.isValid('Pass1');

      expect(result, false);
    });

    test('returns false if password has no number', () {
      final result = PasswordValidator.isValid('Password');

      expect(result, false);
    });

    test('returns false if password has no uppercase letter', () {
      final result = PasswordValidator.isValid('password1');

      expect(result, false);
    });

    test('returns false for empty password', () {
      final result = PasswordValidator.isValid('');

      expect(result, false);
    });
  });
}
