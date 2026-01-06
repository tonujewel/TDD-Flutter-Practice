sealed class EmailValidatorResult {
  const EmailValidatorResult();
}

class ValidEmail extends EmailValidatorResult {
  const ValidEmail();
}

class InvalidEmailAddress extends EmailValidatorResult {
  const InvalidEmailAddress();
}
