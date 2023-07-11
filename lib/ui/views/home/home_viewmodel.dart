// import 'package:edtech_mobile/app/app.bottomsheets.dart';
// import 'package:edtech_mobile/app/app.dialogs.dart';
// import 'package:edtech_mobile/app/app.locator.dart';
// import 'package:edtech_mobile/ui/common/app_strings.dart';
import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  var pageController = PageController();
  int selectedIndex = 0;
  final pages = [
    const CoursesView(),
    const ProfileView(),
    const SettingsView(),
  ];
// void onPageChanged(int value) {
//     // print('onPageChanged $value');

//     _selectedIndex = value;

//     rebuildUi();
//   }

  void onItemTapped(int value) {
    
    // print ('onItemTapped $value');
    selectedIndex = value;
    rebuildUi();
  }

  void onNexPage() {
    if (selectedIndex < 2) {
      pageController.nextPage(
          curve: Curves.linear, duration: const Duration(milliseconds: 300));
    }
}
}