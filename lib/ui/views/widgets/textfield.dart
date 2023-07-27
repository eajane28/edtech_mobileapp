import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.validator,
      this.keyboardType,
      this.formatters,
      this.focusNode,
      this.onChanged,
      this.isObscure,
      this.obscuringCharacter});

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final bool? isObscure;
  final String? obscuringCharacter;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // final bool _validate = false;
  // @override
  // void dispose() {
  //   widget.controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: widget.isObscure ?? false,
        obscuringCharacter: widget.obscuringCharacter ?? "*",
        focusNode: widget.focusNode,
        inputFormatters: widget.formatters,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: widget.hintText,
        ),
        validator: widget.validator,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
      ),
    );
  }
}
