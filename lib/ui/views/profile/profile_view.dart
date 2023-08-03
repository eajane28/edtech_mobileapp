import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:edtech_mobile/ui/views/widgets/profile_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({
    Key? key,
    required this.onBackPressed,
  }) : super(key: key);

  final Function() onBackPressed;

  @override
  Widget builder(BuildContext context,
      ProfileViewModel viewModel,
      Widget? child,) {
    return SingleChildScrollView(
      child: Center(
        child: viewModel.isBusy
            ? const MyCircularProgressBar()
            : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAppBar(title: 'Profile', onTap: onBackPressed),
              const SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(color: const Color(0xFF65AAEA), width: 4)),
                      child: Stack(children: [
                        StreamBuilder<String>(
                            stream: viewModel.getUserImage(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return CircleAvatar(
                                  radius: 72,
                                  backgroundImage: CachedNetworkImageProvider(snapshot.data!),
                                  backgroundColor: const Color(0xFFF8F2EE),
                                );
                              } else {
                                return const CircleAvatar(
                                  radius: 72,
                                  backgroundImage: AssetImage('assets/Cool Kids Bust.png'),
                                  backgroundColor: Color(0xFFF8F2EE),
                                );
                              }
                            }),
                        Positioned(
                          bottom: 0,
                          right: 8,
                          child: GestureDetector(
                            onTap: () {
                              viewModel.pickImage();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                              child: const Icon(
                                MaterialCommunityIcons.camera,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ]),
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
  void onViewModelReady(ProfileViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context,) =>
      ProfileViewModel();
}
