import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const MyButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFE3562A),
          borderRadius: BorderRadius.circular(16),
        ),
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
}

class MyWidgetButton extends StatelessWidget {
  final Widget title;
  final Function()? onTap;

  const MyWidgetButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.color,
      this.width});

  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? const Color(0xFFE3562A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0), child: title),
      ),
    );
  }
}
