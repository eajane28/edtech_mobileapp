import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => controller.text = value,
      // controller: widget.onChanged;
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF78746D),
        ),
        suffixIcon: GestureDetector(
          onTap: null,
          child: const Icon(
            Icons.search,
            color: Color(0xFF78746D),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFFBEBAB3),
          ),
        ),
      ),
    );
  }
}
