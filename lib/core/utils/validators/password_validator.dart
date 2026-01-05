class PasswordValidator {
  static final _upperCaseRegex = RegExp(r'[A-Z]');
  static final _numberRegex = RegExp(r'\d');

  static bool isValid(String password) {
    if (password.length < 8) return false;

    return _upperCaseRegex.hasMatch(password) && _numberRegex.hasMatch(password);
  }
}
