import 'package:edtech_mobile/model/choices_data.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key, required this.choices});

  final ChoicesData choices;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFBEBAB3)),
        borderRadius: BorderRadius.circular(8)),
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Row(
          children: [
            Text(
              choices.choices,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3C3A36)),
            ),
            const SizedBox(width: 16),
            Text(
              choices.description,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3C3A36)),
            ),
          ],
        )),
  );
  }
}