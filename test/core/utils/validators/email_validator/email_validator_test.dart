import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice_flutter/core/utils/validators/email_validator/email_validator.dart';
import 'package:tdd_practice_flutter/core/utils/validators/email_validator/email_validator_result.dart';

void main() {
  group('Email validator', () {
    test("Valid email", () {
      final result = EmailValidator.isValid("tonujewel@gmail.com");

      expect(result, isA<ValidEmail>());
    });

    test("email without @ is invalid", () {
      final result = EmailValidator.isValid("tonujewelgmail.com");
      expect(result, isA<InvalidEmailAddress>());
    });

    test("email with a space is invalid", () {
      final result = EmailValidator.isValid("tonujewel @gmail.com");
      expect(result, isA<InvalidEmailAddress>());
    });

    test("email without domain name is invalid", () {
      final result = EmailValidator.isValid("tonujewel@");
      expect(result, isA<InvalidEmailAddress>());
    });

    test("empty email is invalid", () {
      final result = EmailValidator.isValid("");
      expect(result, isA<InvalidEmailAddress>());
    });
  });
}
