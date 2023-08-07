// import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
// import 'package:edtech_mobile/ui/views/widgets/button.dart';
// import 'package:edtech_mobile/ui/views/widgets/options.dart';
import 'package:edtech_mobile/ui/views/widgets/test_questions.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/courses.dart';
import '../../../model/lesson_topics.dart';
// import '../../../model/quiz_data.dart';
// import '../widgets/options.dart';
// import '../widgets/button.dart';
import '../../../model/user.dart';
import 'test_question_viewmodel.dart';

// ignore: must_be_immutable
class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView(this.topic, this.course, {Key? key, required this.progress}) : super(key: key);

  final Topics topic;
  final Course course;
  final UserProgress progress;

  @override
  Widget builder(
    BuildContext context,
    TestQuestionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: '', onTap: viewModel.back),
              viewModel.isBusy
                  ? const Expanded(child: Center(child: CircularProgressIndicator()))
                  : Expanded(
                      child: PageView(
                        controller: viewModel.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          for (var questions in viewModel.questions!)
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Expanded(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: TestQuestions(
                                    questions: questions,
                                    progress: progress,
                                    topic: topic,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(TestQuestionViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  TestQuestionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestQuestionViewModel(course: course, topic: topic);
}
