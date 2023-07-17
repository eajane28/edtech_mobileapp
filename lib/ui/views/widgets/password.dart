import 'package:edtech_mobile/ui/views/signup/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Password extends ViewModelWidget<SignupViewModel> {
  const Password(
    {super.key, this.obscureText = false});
  final bool obscureText;

  @override
  Widget build(BuildContext context, SignupViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: viewModel.isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: viewModel.changeIcon,
              icon: Icon(viewModel.isObscure == true
                  ? Icons.remove_red_eye
                  : Icons.visibility_off)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: 'Password',
        ),
      ),
    );
  }
}