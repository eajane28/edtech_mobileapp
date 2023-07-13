import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
// import 'package:edtech_mobile/ui/common/app_colors.dart';
// import 'package:edtech_mobile/ui/common/ui_helpers.dart';

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
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: viewModel.pageController,
          onPageChanged: viewModel.onPageChange,
          children:
              viewModel.pages.map((e) => e).toList(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 98,
        child: BottomNavigationBar(
          currentIndex: viewModel.selectedIndex,
          onTap: viewModel.onItemTapped,
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