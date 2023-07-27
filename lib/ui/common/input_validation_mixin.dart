import 'package:edtech_mobile/ui/views/add_credit_card/card_utils.dart';

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
      return value.length == 3 ? null : "CVV not valid";
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

  /// With the card number with Luhn Algorithm
  /// https://en.wikipedia.org/wiki/Luhn_algorithm
  String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return ValidationStrings.fieldReq;
    }

    String number = CardUtils.getCleanedNumber(input);

    if (number.length < 8) {
      return ValidationStrings.numberIsInvalid;
    }

    int sum = 0;
    int length = number.length;
    for (var i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.parse(number[length - i - 1]);

      // every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return ValidationStrings.numberIsInvalid;
  }
}

class ValidationStrings {
  static const String fieldReq = 'This field is required';
  static const String numberIsInvalid = 'Card is invalid';
  static const String pay = 'Validate';
}
