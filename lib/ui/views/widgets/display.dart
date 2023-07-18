import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.image, required this.title, required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        Image.asset(
          image,
          width: double.infinity,
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
      ]),
    );
  }
}
