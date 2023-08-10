import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UpdateNameDialogModel extends BaseViewModel {
  final currentNameField = TextEditingController();
  final currentPasswordField = TextEditingController();
  final updateNameField = TextEditingController();
  final matchPasswordField = TextEditingController();
  final _authService = locator<AuthService>();
  final snackbarService = locator<SnackbarService>();
  final _navigatorService = locator<NavigationService>();

  late User user;

  void updateName() async {
    setBusy(true);
    var response = await _authService.updateName(
        currentPasswordField.text, currentNameField.text, updateNameField.text);
    response.fold((l) => snackbarService.showSnackbar(message: l.message), (r) {
      _navigatorService.replaceWithLoginView();
      snackbarService.showSnackbar(
          message: "Name Successfully Change!\nTry to login",
          duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}
