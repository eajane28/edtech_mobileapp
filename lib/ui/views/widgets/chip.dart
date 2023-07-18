import 'package:edtech_mobile/model/courses_data.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.chip});

  final CoursesData chip;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Chip(
        label: Text(
          chip.name,
          style: const TextStyle(
            color: Color(0xFFF2F2F2),
          ),
        ),
        backgroundColor: const Color(0xFF65AAEA),
      ),
    );
  }
}