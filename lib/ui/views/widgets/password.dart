import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key, required this.controller});

  final TextEditingController controller;

  @override
  PasswordState createState() => PasswordState();
}

class PasswordState extends State<Password> with InputValidationMixin{
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: changeIcon,
              icon: Icon(isObscure == true
                  ? Icons.remove_red_eye
                  : Icons.visibility_off)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          
          hintText: 'Password',
        ),
        validator: (value)=>isPasswordValid(value??'') ? null : 'Password must be at least 6 characters',
      ),
    );
  }

  void changeIcon() {
    setState(() {
      isObscure = !isObscure;
    });
  }
}
