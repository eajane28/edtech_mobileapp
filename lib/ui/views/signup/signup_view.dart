import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/password.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel>
    with InputValidationMixin {
  SignupView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                children: <Widget>[
                  MyAppBar(title: '', onTap: viewModel.navigationService.back),
                  Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Display(
                              image: 'assets/Cool Kids Standing.png',
                              title: 'Sign up',
                              subtitle: 'Create your account'),
                          const SizedBox(height: 8.0),
                          MyTextField(
                            hintText: 'Name',
                            controller: viewModel.nameController,
                            validator: (value) => notEmpty(value ?? '')
                                ? null
                                : 'Field Can\'t Be Empty',
                            keyboardType: TextInputType.text,
                          ),
                          MyTextField(
                            hintText: 'Email',
                            controller: viewModel.emailController,
                            validator: (value) => isEmailValid(value ?? '')
                                ? null
                                : 'Invalid Email',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Password(
                            controller: viewModel.passwordController,
                          ),
                          const SizedBox(height: 8.0),
                          MyWidgetButton(
                            onTap: !viewModel.isBusy
                                ? () {
                                    if (_formKey.currentState!.validate()) {
                                      viewModel.signUp();
                                    }
                                  }
                                : null,
                            title: !viewModel.isBusy
                                ? const Text(
                                    'Sign up',
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
                          const SizedBox(height: 16.0),
                          GestureDetector(
                            onTap: viewModel.logIn,
                            child: const SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Text(
                                'Log in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF78746D),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
