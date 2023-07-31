import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/card_courses.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import 'your_course_viewmodel.dart';

class YourCourseView extends StackedView<YourCourseViewModel> {
  const YourCourseView(this.course, {Key? key}) : super(key: key);
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    YourCourseViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: 'Your Courses', onTap: viewModel.back),
        body: Container(
            height: screenHeight(context),
            width: screenWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: viewModel.isBusy
                ? const MyCircularProgressBar(
              indicatorColor: Colors.orange,
            )
                : ListView.separated(
                itemBuilder: (context, index) => CourseCard(
                          card: viewModel.yourCourseList[index],
                          onTap: (Course card) {},
                        ),
                    separatorBuilder: (_, index) => verticalSpaceSmall,
                    itemCount: viewModel.yourCourseList.length)),
      ),
    );
  }

  @override
  YourCourseViewModel viewModelBuilder(BuildContext context,) =>
      YourCourseViewModel();

  @override
  void onViewModelReady(YourCourseViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
