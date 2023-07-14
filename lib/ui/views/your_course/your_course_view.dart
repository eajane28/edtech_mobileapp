import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                appBar('Your Courses', onTap: viewModel.back),
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
