import 'package:edtech_mobile/app/app.dialogs.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/settings_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/svg_icons_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthService>();
  bool light = true;
  final _localStorage = locator<LocalStorage>();
  final _snackbarService = locator<SnackbarService>();
  List settingsInfoList = [];
  DateTime? lastUpdatedPasswod;
  String? lastUpdatedEmail;
  User? user;
  void init() async {
    setBusy(true);
    final response = await _localStorage.getCurrentUser();
    response.fold((l) => _snackbarService.showSnackbar(message: l.message),
        (r) => user = r);

    final getLastUpdatedPasswordResponse =
        await _authService.getLastUpdatedPassword(user!.id!);
    getLastUpdatedPasswordResponse.fold(
        (l) => _snackbarService.showSnackbar(message: l.message),
        (r) => lastUpdatedPasswod = r?.toDate());

        final getLastUpdatedEmailResponse =
        await _authService.getLastUpdatedEmail(user!.id!);
    getLastUpdatedEmailResponse.fold(
        (l) => _snackbarService.showSnackbar(message: l.message),
        (r) => lastUpdatedEmail = r?.toString());

    settingsInfoList = [
      SettingsData(
          iconPath: SvgIcons.profile,
          title: 'Name',
          user: user!.name,
          onPressed: showUpdateNamePopup),
      SettingsData(
          iconPath: SvgIcons.email,
          title: 'Email',
          user: user!.email,
          onPressed: showUpdateEmailPopup),
      SettingsData(
          iconPath: SvgIcons.password,
          title: 'Password',
          dateTime: lastUpdatedPasswod,
          onPressed: showUpdatePasswordPopup)
    ];

    setBusy(false);
  }

  Switch switchButton() {
    return Switch(
      value: light,
      activeColor: const Color(0xFF5BA092),
      onChanged: (bool value) {
        rebuildUi();
        light = value;
      },
    );
  }

  void back() {
    _navigationService.navigateToHomeView();
  }

  void showUpdatePasswordPopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Password",
      variant: DialogType.updatePasswordDialogUi,
      description: "",
    );
  }

  void showUpdateEmailPopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Email",
      variant: DialogType.updateEmailDialogUi,
      description: "",
    );
  }

  void showUpdateNamePopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Name",
      variant: DialogType.updateNameDialogUi,
      description: "",
    );
  }
}
