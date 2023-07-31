import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/profile_options.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({
    Key? key,
    required this.onBackPressed,
  }) : super(key: key);

  final Function() onBackPressed;

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAppBar(title: 'Profile', onTap: onBackPressed),
              const SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF65AAEA), width: 4)),
                child: const CircleAvatar(
                  radius: 72,
                  backgroundImage: AssetImage(
                    'assets/Cool Kids Bust.png',
                  ),
                  backgroundColor: Color(0xFFF8F2EE),
                ),
              ),
              const SizedBox(height: 8.0),
              ProfileTabs(text: 'Your Courses', onTap: viewModel.navigateToYourCourseView),
              ProfileTabs(text: 'Payment', onTap: null),
              Center(
                child: GestureDetector(
                  onTap: () => viewModel.logout(),
                  child: const SizedBox(
                    height: 40,
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF78746D),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
