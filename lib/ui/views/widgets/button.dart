import 'package:flutter/material.dart';

Widget button(String title, {void Function()? onTap}) {
  return Container(
    margin: const EdgeInsets.all(32.0),
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xFFE3562A),
      borderRadius: BorderRadius.circular(16),
    ),
    child: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    ),
  );
}
