import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key, required this.choice});

  final String choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xFFBEBAB3)), borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        choice,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF3C3A36)),
      ),
    );
  }
}
