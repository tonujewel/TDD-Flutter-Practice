import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice_flutter/core/utils/validators/email_validator.dart';

void main() {
  group('Email validator', () {
    test("Should be return true for a valid email", () {
      // Act
      final result = EmailValidator.isValid("test@email.com");

      // Assert
      expect(result, true);
    });

    test("should return false for email without @", () {
      // Act
      final result = EmailValidator.isValid("testemail.com");

      // Assert
      expect(result, false);
    });

    test('should return false for email without domain', () {
      final result = EmailValidator.isValid('test@');

      expect(result, false);
    });

    test('should return false for empty email', () {
      final result = EmailValidator.isValid('');

      expect(result, false);
    });

    test('should return false for space email', () {
      final result = EmailValidator.isValid('email .com');

      expect(result, false);
    });

    test('should return false for email without username', () {
      final result = EmailValidator.isValid('@mail.com');

      expect(result, false);
    });
  });
}
