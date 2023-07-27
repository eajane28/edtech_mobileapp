mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length > 5;

  bool isEmailValid(String email) {
    final pattern = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return pattern.hasMatch(email);
  }

  bool notEmpty(String value) => value.isNotEmpty;

  bool passwordMatch(String password, String match) => password == match;

  String? cvvValid(String? value) {
    if (notEmpty(value!)) {
      return value.length == 4 ? null : "CVV not valid";
    } else {
      return 'Field Can\'t Be Empty';
    }
  }

  String? cardNumberValid(String? value) {
    if (notEmpty(value!)) {
      return value.replaceAll(" ", '').length == 16 ? null : "Card number not valid";
    } else {
      return 'Field Can\'t Be Empty';
    }
  }

  String? cardExpiryValid(String? value) {
    if (notEmpty(value!)) {
      return value.replaceAll(" ", '').length == 5 ? null : "Card expiry date not valid";
    } else {
      return 'Field Can\'t Be Empty';
    }
  }
}
