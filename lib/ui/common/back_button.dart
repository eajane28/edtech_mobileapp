import 'package:flutter/material.dart';

Widget backButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(width: 8),
      Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFFBEBAB3)),
        ),
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}
