import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice_flutter/core/utils/validators/password_validator/password_validation_result.dart';
import 'package:tdd_practice_flutter/core/utils/validators/password_validator/password_validator.dart';

void main() {
  group('PasswordValidator', () {
    test("Password too short", () {
      final result = PasswordValidator.isValid("Pass2");
      expect(result, isA<PasswordTooShort>());
    });

    test('returns PasswordMissingUppercase when uppercase missing', () {
      final result = PasswordValidator.isValid('password1!');

      expect(result, isA<PasswordMissingUppercase>());
    });

    test("returns PasswordMissingNumber when number mission ", () {
      final result = PasswordValidator.isValid("Password@@@@");

      expect(result, isA<PasswordMissingNumber>());
    });

    test("returns PasswordMissingSpecialChar when Special Character mission ", () {
      final result = PasswordValidator.isValid("Password123456");

      expect(result, isA<PasswordMissingSpecialChar>());
    });

    test('returns PasswordValid for strong password', () {
      final result = PasswordValidator.isValid('Password1!');

      expect(result, isA<PasswordValid>());
    });
  });
}
