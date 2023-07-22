import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/settings_data.dart';
import 'package:edtech_mobile/model/user.dart';
// import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/ui/common/svg_icons_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
   
  SettingsViewModel(this.user);
 final User user;
  bool light = true;

  final settingsInfoList = [
    SettingsData(
        iconPath: SvgIcons.profile, title: 'Name', text: user.name),
    SettingsData(
        iconPath: SvgIcons.email, title: 'Email', text: user.email),
    const SettingsData(
        iconPath: SvgIcons.password,
        title: 'Password',
        text: 'changed 2 weeks ago')
  ];

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
