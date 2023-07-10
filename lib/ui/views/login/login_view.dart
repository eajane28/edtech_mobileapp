import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import '../widgets/container_icons.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/Cool Kids Sitting.png',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Center(
                child: Text(
                  'Login with social networks',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF78746D),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                //can be reduced by making the widget for icons but assets in a made class:
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // buildIcon(iconsData),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF65AAEA),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child:
                              Image.asset('assets/Social Networks Icons.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF65AAEA),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                              'assets/Social Networks Icons (1).png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF65AAEA),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                              'assets/Social Networks Icons (2).png'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //can be reduced still creating a widget for text field except the hint text to find solution
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
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
              // MaterialButton(
              //   shape:
              //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              //   color: const Color(0xFFE3562A),
              //   onPressed: print('1'),
              //   child: const Padding(
              //     padding: EdgeInsets.symmetric(vertical: 16.0),
              //     child: Text(
              //       'Log in',
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //         color: Color(0xFFFFFFFF),
              //       )
              //   ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3562A),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF78746D),
                  ),
                ),
              ),
            ],
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
