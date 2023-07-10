import 'package:flutter/material.dart';

Widget backButton() {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(left: 15.0),
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
         border: Border.all(
          color: const Color(0xFFBEBAB3)
         ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    ),
  );
}