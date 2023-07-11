// import 'package:edtech_mobile/model/intro_data.dart';

// import 'package:edtech_mobile/ui/common/back_button.dart';
import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
// import 'package:edtech_mobile/ui/common/app_colors.dart';
// import 'package:edtech_mobile/ui/common/ui_helpers.dart';
// import 'package:onboarding/onboarding.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
            children: [
              getInfo(model.currentIndex),
            //   PageView(
            //   physics: const BouncingScrollPhysics(),
            //   onPageChanged: model.setIndex,
            //   children: model.pages.map((e) => e).toList(),
            ],
                  ),
          )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          selectedItemColor: Colors.red,
          elevation: 16,
          iconSize: 20.0,
          // type: BottomNavigationBarType.shifting,

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Courses",
              icon: SvgPicture.asset('assets/icons/courses.svg', width: 20),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: SvgPicture.asset('assets/icons/profile.svg', width: 20),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: SvgPicture.asset('assets/icons/wheel.svg', width: 20),
            ),
          ],
          // onTap: (index) => viewModel.onItemTapped,
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getInfo(int index) {
    switch (index) {
      case 0:
        return const CoursesView();
      case 1:
        return const ProfileView();
      case 2:
        return const SettingsView();
        default:
        return const CoursesView();
    }
  }
}
