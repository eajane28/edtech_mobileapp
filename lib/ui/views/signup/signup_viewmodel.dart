import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = locator<AuthService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  void logIn() {
    navigationService.navigateToLoginView();
  }

  void signUp() async {
    setBusy(true);
    var response = await authService.signUpWithEmail(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text);
    response.fold((l) => _snackbarService.showSnackbar(message: l.message, duration: const Duration(seconds: 2)),
        (r) => navigationService.navigateToLoginView());
    setBusy(false);
  }
}
