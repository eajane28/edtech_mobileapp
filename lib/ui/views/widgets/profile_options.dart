import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  final String text;
   void Function()? onTap;
   ProfileTabs({super.key, required this.text, required this.onTap});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            width: 1.0,
            color: const Color(0xFFBEBAB3),
          )),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
  }
}
