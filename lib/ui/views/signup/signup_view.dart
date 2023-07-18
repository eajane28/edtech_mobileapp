import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/password.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                children: <Widget>[
                  MyAppBar(title: '', onTap: viewModel.back),
                  Center(
                    child: Column(
                      children: [
                        const Display(
                            image: 'assets/Cool Kids Standing.png', title: 'Sign up', subtitle: 'Create your account'),
                        const SizedBox(height: 8.0),
                        const MyTextField(hintText: 'Name'),
                        const MyTextField(hintText: 'Email'),
                        const Password(),
                        const SizedBox(height: 8.0),
                        MyButton(
                          title: 'Sign up',
                          onTap: () {},
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
