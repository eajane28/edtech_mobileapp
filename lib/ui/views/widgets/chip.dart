import 'package:edtech_mobile/model/courses_data.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  const CustomChip({super.key, required this.chip, required this.onSelected});

  final CoursesData chip;
  final Function(bool, String) onSelected;

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        child: FilterChip(
          onSelected: (bool value,) {
            setState(() {
              isSelected = !isSelected;
              widget.onSelected(isSelected, widget.chip.name);
            });
          },
          label: Text(
            widget.chip.name,
            style: const TextStyle(
              color: Color(0xFFF2F2F2),
            ),
          ),
          backgroundColor: isSelected? const Color(0xFF65AAEA): Colors.grey,
        ),
      ),
    );
  }

  void indicator() {
    setState(() {
      isSelected = !isSelected;
    });
  }
}
