import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/icons_data.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = locator<AuthService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  final iconList = [
    const IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  bool isObscure = true;

  void changeIcon() {
    isObscure = !isObscure;
    rebuildUi();
  }

  void signUp() {
    _navigationService.navigateToSignupView();
  }

  void login() async {
    setBusy(true);
    var result = await authService.login(email: emailController.text, password: passwordController.text);
    result.fold(
        (l) => _snackbarService.showSnackbar(message: l.message, duration: const Duration(seconds: 2)), (r) => _navigationService.navigateToHomeView());
    setBusy(false);
  }

  void forgotPassword() {
    _navigationService.navigateToForgotPasswordView();
  }

  void facebookLogin() async {
    final response = await authService.facebookSignIn();
    response.fold((l) => print("dsjjidjsj"), (r) => _navigationService.replaceWithHomeView());
  }
}
