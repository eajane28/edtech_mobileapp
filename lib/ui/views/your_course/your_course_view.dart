import 'package:edtech_mobile/ui/common/back_button.dart';
import 'package:edtech_mobile/ui/views/widgets/your_courses.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'your_course_viewmodel.dart';

class YourCourseView extends StackedView<YourCourseViewModel> {
  const YourCourseView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourCourseViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(flex: 1, child: backButton()),
                    const Expanded(
                      flex: 2,
                      child: Text(
                        'Your Courses',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                for (var carditem in viewModel.yourCourseList) card(carditem),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  YourCourseViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourCourseViewModel();
}
