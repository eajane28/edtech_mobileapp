// import 'package:edtech_mobile/model/intro_data.dart';

// import 'package:edtech_mobile/ui/common/back_button.dart';
// import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
// import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
// import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
// import 'package:edtech_mobile/ui/common/app_colors.dart';
// import 'package:edtech_mobile/ui/common/ui_helpers.dart';
// import 'package:onboarding/onboarding.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    final PageController pageController = PageController(initialPage: 0);
    int currentPageIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          onPageChanged: (int index) {
            currentPageIndex = index;
            viewModel.onItemTapped(index);
          },
          children:
              // getInfo(model.currentIndex),
              viewModel.pages.map((e) => e).toList(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 98,
        child: BottomNavigationBar(
          currentIndex: viewModel.selectedIndex,
          onTap: (index) {
            currentPageIndex = index + 1;
            if (currentPageIndex == 0 || currentPageIndex == 1) {
              pageController.animateToPage(0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            } else if (currentPageIndex == 2) {
              pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            } else {
              pageController.animateToPage(2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            }
          },
          // currentIndex: model.currentIndex,
          // onTap: viewModel.onItemTapped,
          selectedItemColor: Colors.red,
          elevation: 16,
          iconSize: 25.0,
          // type: BottomNavigationBarType.shifting,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Courses", icon: Icon(Icons.collections_bookmark)
                // SvgPicture.asset('assets/icons/courses.svg', width: 20),
                ),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)
                // SvgPicture.asset('assets/icons/profile.svg', width: 20),
                ),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings_sharp)
                // SvgPicture.asset('assets/icons/wheel.svg', width: 20),
                ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

// Widget getInfo(int index) {
//   switch (index) {
//     case 0:
//       return const CoursesView();
//     case 1:
//       return const ProfileView();
//     case 2:
//       return const SettingsView();
//       default:
//       return const CoursesView();
//   }
// }
