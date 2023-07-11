import 'package:edtech_mobile/model/settings_data.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  bool light = true;

  final settingsInfoList = [
    SettingsData(
        iconPath: 'assets/profile.png', title: 'Name', text: 'Juana Antonieta'),
    SettingsData(
        iconPath: 'assets/email.png',
        title: 'Email',
        text: 'juanita123@gmail.com'),
    SettingsData(
        iconPath: 'assets/password.png',
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
