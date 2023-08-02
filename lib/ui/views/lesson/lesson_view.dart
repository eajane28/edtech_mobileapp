import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/course_test/course_test_view.dart';
import 'package:edtech_mobile/ui/views/topic_introduction/topic_introduction_view.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/courses_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import 'lesson_viewmodel.dart';

class LessonView extends StackedView<LessonViewModel> {
  const LessonView(
      {Key? key,
      required this.numberOfLessons,
      required this.topicIndex,
      required this.course,
      required this.topic,
      required this.progress})
      : super(key: key);

  final CourseTopics topic;
  final Course course;
  final int topicIndex;
  final int numberOfLessons;
  final UserProgress progress;

  @override
  Widget builder(
    BuildContext context,
    LessonViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: course.title, onTap: viewModel.backToChooseLesson),
        body: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Header(
                topic: topic,
                topicIndex: topicIndex,
                numberOfLessons: numberOfLessons,
              ),
              Expanded(
                child: PageView(
                    onPageChanged: viewModel.onPageChanged,
                    physics: const BouncingScrollPhysics(),
                    controller: viewModel.pageController,
                    // onPageChanged: viewModel.onPageChanged,
                    children: [
                      TopicIntroductionView(
                        topic: topic,
                        topicIndex: topicIndex,
                        course: course,
                      ),
                      CourseTestView(
                        topic: topic,
                        course: course,
                        progress: progress,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
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
