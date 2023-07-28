// ignore_for_file: constant_identifier_names

import 'package:edtech_mobile/ui/common/png_constants.dart';
import 'package:flutter/material.dart';

class CardUtils {
  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static Widget? getCardIcon(CardType? cardType) {
    String img = "";
    Icon? icon;
    switch (cardType) {
      case CardType.mastercard:
        img = CardTypeImage.mastercard;
        break;
      case CardType.visa:
        img = CardTypeImage.visa;
        break;
      case CardType.verve:
        img = CardTypeImage.verve;
        break;
      case CardType.american_express:
        img = CardTypeImage.americanExpress;
        break;
      case CardType.discover:
        img = CardTypeImage.discover;
        break;
      case CardType.diners_club:
        img = CardTypeImage.diners;
        break;
      case CardType.jcb:
        img = CardTypeImage.diners;
        break;
      case CardType.others:
        icon = Icon(
          Icons.credit_card,
          size: 40.0,
          color: Colors.grey[600],
        );
        break;
      default:
        icon = Icon(
          Icons.warning,
          size: 40.0,
          color: Colors.grey[600],
        );
        break;
    }

    Widget? widget;
    if (img.isNotEmpty) {
      widget = Image.asset(
        img,
        width: 40.0,
      );
    } else {
      widget = icon;
    }
    return widget;
  }


  static CardType getCardTypeFrmNumber(String input) {
    CardType cardType;
    if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = CardType.mastercard;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      cardType = CardType.visa;
    } else if (input.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      cardType = CardType.verve;
    } else if (input.startsWith(RegExp(r'((34)|(37))'))) {
      cardType = CardType.american_express;
    } else if (input.startsWith(RegExp(r'((6[45])|(6011))'))) {
      cardType = CardType.discover;
    } else if (input.startsWith(RegExp(r'((30[0-5])|(3[89])|(36)|(3095))'))) {
      cardType = CardType.diners_club;
    } else if (input.startsWith(RegExp(r'(352[89]|35[3-8][0-9])'))) {
      cardType = CardType.jcb;
    } else if (input.length <= 8) {
      cardType = CardType.others;
    } else {
      cardType = CardType.invalid;
    }
    return cardType;
  }
}

enum CardType {
  mastercard,
  visa,
  verve,
  discover,
  american_express,
  diners_club,
  jcb,
  others,
  invalid
}