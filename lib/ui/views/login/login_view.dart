import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: Column(
                  children: [
                    display('assets/Cool Kids Sitting.png', 'Log in',
                        'Login with social networks'),
                  ],
                )),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var icon in viewModel.iconList) buildIcon(icon),
                  ],
                ),
                textfield('Email'),
                Padding(
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
                ),
                const SizedBox(height: 16.0),
                const Center(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF78746D),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                button('Log in', onTap: viewModel.login),
                const SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: viewModel.signUp,
                    child: const Text(
                      'Sign up',
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
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
