import 'package:edtech_mobile/model/settings_data.dart';
import 'package:edtech_mobile/ui/common/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  bool light = true;

  final settingsInfoList = [
    SettingsData(
        iconPath: SvgIcons.profile, title: 'Name', text: 'Juana Antonieta'),
    SettingsData(
        iconPath: SvgIcons.email, title: 'Email', text: 'juanita123@gmail.com'),
    SettingsData(
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
}
