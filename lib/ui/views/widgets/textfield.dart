import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key, required this.hintText, required this.controller, this.validator});
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // final bool _validate = false;
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          // errorText: _validate ? 'Field Can\'t Be Empty' : null,
          // errorStyle: _validate ? const TextStyle(color: Colors.red) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: widget.hintText,
        ),
        validator: widget.validator,
        controller: widget.controller,
      ),
    );
  }
}
