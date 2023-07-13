import 'package:edtech_mobile/ui/common/back_button.dart';
import 'package:flutter/material.dart';

Widget appBar(String title, {void Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            child: backButton(),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(width: 48)
      ],
    ),
  );
}
