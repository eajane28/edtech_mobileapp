import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 25.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

/*
* Removes the glowing overscroll
* */
class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

/*
* Inserts a space every 4 characters
* */
class CreditCartInputFormatter extends TextInputFormatter {
  final bool? isMonth;

  CreditCartInputFormatter({this.isMonth = false});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    text = text.replaceAll(RegExp(r'(\s)|(\D)'), '');

    int offset = newValue.selection.start;
    var subText = newValue.text.substring(0, offset).replaceAll(RegExp(r'(\s)|(\D)'), '');
    int realTrimOffset = subText.length;

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (isMonth! == false) {
        if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
          buffer.write(' '); // Replace this with anything you want to put after each 4 numbers
        }
      } else {
        if (nonZeroIndex % 2 == 0 && nonZeroIndex != text.length) {
          buffer.write('/'); // Replace this with anything you want to put after each 4 numbers
        }
      }

      // This block is only executed once
      if (isMonth! == false) {
        if (nonZeroIndex % 4 == 0 && subText.length == nonZeroIndex && nonZeroIndex > 4) {
          int moveCursorToRight = nonZeroIndex ~/ 4 - 1;
          realTrimOffset += moveCursorToRight;
        }
      } else {
        if (nonZeroIndex % 2 == 0 && subText.length == nonZeroIndex && nonZeroIndex > 2) {
          int moveCursorToRight = nonZeroIndex ~/ 2 - 1;
          realTrimOffset += moveCursorToRight;
        }
      }

      // This block is only executed
      if (isMonth! == false) {
        if (nonZeroIndex % 4 != 0 && subText.length == nonZeroIndex) {
          int moveCursorToRight = nonZeroIndex ~/ 4;
          realTrimOffset += moveCursorToRight;
        }
      }else{
        if (nonZeroIndex % 2 != 0 && subText.length == nonZeroIndex) {
          int moveCursorToRight = nonZeroIndex ~/ 2;
          realTrimOffset += moveCursorToRight;
        }
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(text: string, selection: TextSelection.collapsed(offset: realTrimOffset));
  }
}