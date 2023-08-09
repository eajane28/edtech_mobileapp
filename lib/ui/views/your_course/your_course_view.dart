import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/courses.dart';
import '../widgets/your_courses.dart';
import 'your_course_viewmodel.dart';

class YourCourseView extends StackedView<YourCourseViewModel> {
  const YourCourseView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourCourseViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MyAppBar(title: 'Your Courses', onTap: viewModel.back),
          ), //put padding
          Expanded(
            child: Container(
                height: screenHeight(context),
                width: screenWidth(context),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: viewModel.isBusy
                    ? const MyCircularProgressBar(
                        indicatorColor: Colors.orange,
                      )
                    : ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => YourCourseCard(
                              card: viewModel.yourCourseList![index],
                              onTap: (Course card) {
                                viewModel.onTapToChooseLessonView(card);
                              },
                            ),
                        separatorBuilder: (_, index) => verticalSpaceSmall,
                        itemCount: viewModel.yourCourseList!.length)),
          ),
        ],
      )),
    );
  }

  @override
  YourCourseViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourCourseViewModel();

  @override
  void onViewModelReady(YourCourseViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
