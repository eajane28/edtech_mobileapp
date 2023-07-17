import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/profile_options.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

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
              appBar('Profile', onTap: null),
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
              profileTabs('Your Courses', onTap: viewModel.goto),
              profileTabs('Saved', onTap: null),
              profileTabs('Payment', onTap: null),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF78746D),
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
