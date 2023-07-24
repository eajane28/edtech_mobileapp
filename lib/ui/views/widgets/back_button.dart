// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  MyBackButton({super.key, required this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFFBEBAB3)),
        ),
        child: const Center(
          child: Icon(Icons.chevron_left),
        ),
      ),
    );
  }
}
