class PasswordUtils {
  static var passwordStrong = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$%])(?=.{8,})");
  static var passwordMedium = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.{8,})");
  static var passwordWeak = RegExp(r"^(?=.*[a-z])(?=.*\d)(?=.{8,})");

  static bool isPasswordStrongOrMedium(String password) {
    switch(verifyPasswordStrength(password)) {
      case PasswordStrength.STRONG:
        return true;
      case PasswordStrength.MEDIUM:
        return true;
      default:
        return false;
    }
  }

  static PasswordStrength verifyPasswordStrength(String password) {
    if(passwordStrong.hasMatch(password))
      return PasswordStrength.STRONG;

    if(passwordMedium.hasMatch(password))
      return PasswordStrength.MEDIUM;

    if(passwordWeak.hasMatch(password))
      return PasswordStrength.WEAK;

    return PasswordStrength.UNACCEPTABLE;
  }
}

enum PasswordStrength {
  STRONG,
  MEDIUM,
  WEAK,
  UNACCEPTABLE,
}