import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UpdatePasswordDialogModel extends BaseViewModel {
  final currentPasswordField = TextEditingController();
  final updatePasswordField = TextEditingController();
  final matchPasswordField = TextEditingController();
  final _authService = locator<AuthService>();
  final snackbarService = locator<SnackbarService>();
  final _navigatorService = locator<NavigationService>();

  late User user;

  void updatePassword() async {
    setBusy(true);
    var response = await _authService.updatePassword(currentPasswordField.text, matchPasswordField.text);
    response.fold((l) => snackbarService.showSnackbar(message: l.message), (r) {
      _navigatorService.replaceWithLoginView();
      snackbarService.showSnackbar(
          message: "Password Successfully Change!/nTry to login", duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}