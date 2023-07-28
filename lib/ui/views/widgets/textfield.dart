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
      this.obscuringCharacter,
      this.textInputAction,
      this.onEditingComplete,
      this.suffix});

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final bool? isObscure;
  final String? obscuringCharacter;
  final Widget? suffix;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;

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
        textInputAction: widget.textInputAction,
        onEditingComplete: widget.onEditingComplete,
        obscureText: widget.isObscure ?? false,
        obscuringCharacter: widget.obscuringCharacter ?? "*",
        focusNode: widget.focusNode,
        inputFormatters: widget.formatters,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: widget.suffix,
          ),
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
