import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final TextEditingController emailController = TextEditingController();
  final _navigationService = locator<NavigationService>();
  final AuthService authService = locator<AuthService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();


  void backToLogInView() {
    _navigationService.navigateToLoginView();
  }

  void changePassword() async {
    setBusy(true);
    final response = await authService.forgetPassword(email: emailController.text);
    response.fold((l) => _snackbarService.showSnackbar(message: l.message),
        (r) => _navigationService.navigateToLoginView());
    setBusy(false);
  }
}
