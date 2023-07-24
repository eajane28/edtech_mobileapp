import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/settings_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/svg_icons_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool light = true;
  final _localStorage = locator<LocalStorage>();
  final _snackbarService = locator<SnackbarService>();
  List settingsInfoList = [];

  User? user;
  void init() async {
    setBusy(true);
    String? lastUpdatedPassword = await _localStorage.getLastUpdatedPassword();
    final response = await _localStorage.getCurrentUser();
    response.fold((l) => _snackbarService.showSnackbar(message: l.message),
        (r) => user = r);

    settingsInfoList = [
      SettingsData(iconPath: SvgIcons.profile, title: 'Name', user: user!.name),
      SettingsData(iconPath: SvgIcons.email, title: 'Email', user: user!.email),
      SettingsData(
          iconPath: SvgIcons.password,
          title: 'Password',
          user: lastUpdatedPassword == null ? '' : 'changed 2 weeks ago')
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
}
