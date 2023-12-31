import 'package:edtech_mobile/ui/common/svg_icons_constants.dart';
import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../widgets/my_circular_progress_bar.dart';
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
        child: viewModel.isBusy
            ? const MyCircularProgressBar(
                indicatorColor: Colors.orange,
              )
            : PageView(
                physics: const BouncingScrollPhysics(),
                controller: viewModel.pageController,
                onPageChanged: (index) => viewModel.onPageChange(index),
                children: [
                  CoursesView(
                    onBackPressed: viewModel.animateToPage,
                    user: viewModel.user!,
                  ),
                  ProfileView(
                    onBackPressed: viewModel.animateToPage,
                  ),
                  SettingsView(
                    onBackPressed: viewModel.animateToPage,
                    user: viewModel.user!,
                  ),
                ],
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
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Courses",
              icon: SvgPicture.asset(SvgIcons.courses,
                  colorFilter:
                      ColorFilter.mode(viewModel.selectedIndex == 0 ? Colors.red : Colors.grey, BlendMode.srcIn),
                  width: 20),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: SvgPicture.asset(SvgIcons.profile,
                  colorFilter:
                      ColorFilter.mode(viewModel.selectedIndex == 1 ? Colors.red : Colors.grey, BlendMode.srcIn),
                  width: 20),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: SvgPicture.asset(SvgIcons.wheel,
                  colorFilter:
                      ColorFilter.mode(viewModel.selectedIndex == 2 ? Colors.red : Colors.grey, BlendMode.srcIn),
                  width: 20),
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

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
