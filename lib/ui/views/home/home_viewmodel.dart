// import 'package:edtech_mobile/app/app.bottomsheets.dart';
// import 'package:edtech_mobile/app/app.dialogs.dart';
// import 'package:edtech_mobile/app/app.locator.dart';
// import 'package:edtech_mobile/ui/common/app_strings.dart';
// import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
// import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
// import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:flutter/material.dart';
// import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
// import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
// import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  final _localStorage = locator<LocalStorage>();
  final _snackbarService = locator<SnackbarService>();
  int selectedIndex = 0;
  List<int> indeces = [];

  User? user;
  void init() async {
    setBusy(true);
    final response = await _localStorage.getCurrentUser();
    response.fold((l) => _snackbarService.showSnackbar(message: l.message), (r) => user =r);
    setBusy(false);
  }

  void onPageChange(int value) {
    selectedIndex = value;
    rebuildUi();
  }

  void addIndeces(int value) {}

  void animateToPage() {
    pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    rebuildUi();
  }

  void onItemTapped(int value) {
    selectedIndex = value + 1;
    if (selectedIndex == 0 || selectedIndex == 1) {
      pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else if (selectedIndex == 2) {
      pageController.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      pageController.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
}
