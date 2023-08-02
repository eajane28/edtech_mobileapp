import 'package:edtech_mobile/ui/views/course_test/course_test_view.dart';
import 'package:edtech_mobile/ui/views/topic_introduction/topic_introduction_view.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/courses_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import '../../../model/chosen_course_data.dart';
import 'lesson_viewmodel.dart';

class LessonView extends StackedView<LessonViewModel> {
  const LessonView(this.topic, this.course, {Key? key}) : super(key: key);

  final Topics topic;
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    LessonViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
             child: Column(
                children: [
                  MyAppBar(
                      title: course.title, onTap: viewModel.backToChooseLesson),
                  Header(topic: topic),
                  const SizedBox(height: 16),
                  Expanded(
                    child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: PageController(),
                        // onPageChanged: viewModel.onPageChanged,
                        children: [
                          TopicIntroductionView(topic),
                          CourseTestView(topic, course)
                        ]),
                  ),
                ],
              ),
            )),
    );
  }

  @override
  void onViewModelReady(LessonViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  LessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LessonViewModel(topic: topic);
}
