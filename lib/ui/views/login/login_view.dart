import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/password.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> with InputValidationMixin {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Center(
                      child: Column(
                    children: [
                      Display(
                          image: 'assets/Cool Kids Sitting.png',
                          title: 'Log in',
                          subtitle: 'Login with social networks'),
                    ],
                  )),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var icon in viewModel.iconList)
                        BuildIcon(iconsData: icon,
                        action: viewModel.iconList.indexOf(icon) == 0
                                ? viewModel.facebookLogin
                                : viewModel.iconList.indexOf(icon) == 1
                                    ? null
                                    : viewModel.iconList.indexOf(icon) == 2
                                        ? null : null
                                        // viewModel.googleSignIn
                                        // : null
                                        ),
                    ],
                  ),
                  MyTextField(
                    hintText: 'Email',
                    controller: viewModel.emailController,
                    validator: (value) =>
                        isEmailValid(value ?? '') ? null : 'Invalid Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Password(
                    controller: viewModel.passwordController, hintText: 'Password',
                  ),
                  const SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: viewModel.forgotPassword,
                    child: const Center(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF78746D),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  MyWidgetButton(
                    onTap: !viewModel.isBusy
                        ? () {
                            if (_formKey.currentState!.validate()) {
                              viewModel.login();
                            }
                          }
                        : null,
                    title: !viewModel.isBusy
                        ? const Text(
                            'Log in',
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
                  Center(
                    child: GestureDetector(
                      onTap: viewModel.signUp,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: Text(
                          'Sign up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF78746D),
                          ),
                        ),
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
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
