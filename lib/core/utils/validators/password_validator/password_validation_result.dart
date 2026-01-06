sealed class PasswordValidationResult {
  const PasswordValidationResult();
}

class PasswordValid extends PasswordValidationResult {
  const PasswordValid();
}

class PasswordTooShort extends PasswordValidationResult {
  const PasswordTooShort();
}

class PasswordMissingUppercase extends PasswordValidationResult {
  const PasswordMissingUppercase();
}

class PasswordMissingNumber extends PasswordValidationResult {
  const PasswordMissingNumber();
}

class PasswordMissingSpecialChar extends PasswordValidationResult {
  const PasswordMissingSpecialChar();
}
