import 'package:flutter/material.dart';

Widget container(String path, String head, String subtitle) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            path,
            width: double.infinity,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            head,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFF3C3A36),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF78746D),
            ),
          ),
        ],
      ),
    ),
  );
}
