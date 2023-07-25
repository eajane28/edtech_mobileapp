mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length > 5;

  bool isEmailValid(String email) {
    final pattern = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return pattern.hasMatch(email);
  }

  bool notEmpty(String value) => value.isNotEmpty;

  bool passwordMatch(String password, String match) => password == match;
}
