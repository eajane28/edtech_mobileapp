import 'package:flutter/material.dart';

Widget display(String image, String title, String subtitle) {
  return Column(children: [
    Image.asset(
      image,
    ),
    const SizedBox(
      height: 16.0,
    ),
    Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    ),
    const SizedBox(
      height: 8.0,
    ),
    Text(
      subtitle,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF78746D),
      ),
    ),
  ]);
}
