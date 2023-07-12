import 'package:edtech_mobile/ui/common/back_button.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: backButton()),
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3C3A36),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF65AAEA), width: 4)),
              child: const CircleAvatar(
                radius: 72,
                backgroundImage: AssetImage(
                  'assets/Cool Kids Bust.png',
                ),
                backgroundColor: Color(0xFFF8F2EE),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.0,
                    color: const Color(0xFFBEBAB3),
                  )),
              child: GestureDetector(
                onTap: viewModel.goto,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Your Courses',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.0,
                    color: const Color(0xFFBEBAB3),
                  )),
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Saved',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.0,
                    color: const Color(0xFFBEBAB3),
                  )),
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
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
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
