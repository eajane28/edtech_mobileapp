import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StackedView<ForgotPasswordViewModel>
    with InputValidationMixin {
  ForgotPasswordView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    ForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                MyAppBar(title: '', onTap: viewModel.backToLogInView),
                const Display(
                    image: 'assets/Cool Kids Sitting.png',
                    title: 'Forget Password',
                    subtitle:
                        'Provide your account\'s email for which you want to reset your password.'),
                const SizedBox(height: 20),
                MyTextField(
                  hintText: 'Email',
                  controller: viewModel.emailController,
                  validator: (value) =>
                      isEmailValid(value ?? '') ? null : 'Invalid Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                MyWidgetButton(
                  onTap: !viewModel.isBusy
                      ? () {
                          if (_formKey.currentState!.validate()) {
                            viewModel.changePassword();
                          }
                        }
                      : null,
                  title: !viewModel.isBusy
                      ? const Text(
                          'Enter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  @override
  ForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotPasswordViewModel();
}
