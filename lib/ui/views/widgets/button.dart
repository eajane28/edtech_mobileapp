import 'package:flutter/material.dart';

Widget button(String title) {
  return Container(
    margin: const EdgeInsets.all(32.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    ),
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: const Color(0xFFE3562A),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
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
