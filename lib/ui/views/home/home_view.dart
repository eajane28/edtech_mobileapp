// import 'package:edtech_mobile/model/intro_data.dart';

// import 'package:edtech_mobile/ui/common/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Scaffold(
      body: SafeArea(
          child: PageView(children: viewModel.pages.map((e) => e).toList())),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 20.0,
          // type: BottomNavigationBarType.shifting,
          currentIndex: 0,
          onTap: (val) {},
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
          ]),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
