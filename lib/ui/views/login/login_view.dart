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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 96.0, 16.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/Cool Kids Sitting.png',
                width: 343,
                height: 253,
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
                  color : Color(0xFF78746D),  
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF65AAEA),
                  ),
                  child: Stack(
                    children: <Widget> [
                      Center(
                        child: Image.asset('assets/Social Networks Icons.png'),
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
                    children: <Widget> [
                      Center(
                        child: Image.asset('assets/Social Networks Icons (1).png'),
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
                    children: <Widget> [
                      Center(
                        child: Image.asset('assets/Social Networks Icons (2).png'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              width: 343,
              height: 53,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFBEBAB3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
                ),
            ),
            const SizedBox(height: 16.0),
            Container(
              width: 343,
              height: 53,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFBEBAB3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
                ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color:  Color(0xFF78746D),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              width: 343,
              height: 56,
              decoration: 
              BoxDecoration(
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
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
