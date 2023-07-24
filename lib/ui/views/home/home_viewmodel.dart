// import 'package:edtech_mobile/app/app.bottomsheets.dart';
// import 'package:edtech_mobile/app/app.dialogs.dart';
// import 'package:edtech_mobile/app/app.locator.dart';
// import 'package:edtech_mobile/ui/common/app_strings.dart';
// import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
// import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
// import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
// import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
// import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
// import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  // int currentPageIndex = 0;
  // var pageController = PageController();
  int selectedIndex = 0;
  List<int> indeces = [];
  // final pages = [
  //   // const YourCourseView(),
  //   const CoursesView(),
  //   const ProfileView(),
  //   const SettingsView(onBackPressed: animateToHome,),
  // ];


  void onPageChange(int value) {
    // print ('onItemTapped $value');
    selectedIndex = value;    indeces.add(selectedIndex);
    rebuildUi();
  }

  void animateToPage() {
    pageController.animateToPage(indeces.length <= 1 ? 0 : indeces[indeces.length - 1],
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    indeces.removeRange(indeces.length - 1, indeces.length);
    rebuildUi();
  }

  void onItemTapped(int value) {
    selectedIndex = value + 1;
    // indeces.add(selectedIndex);
    if (selectedIndex == 0 || selectedIndex == 1) {
      pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else if (selectedIndex == 2) {
      pageController.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      pageController.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
}
