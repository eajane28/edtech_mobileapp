// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'test_question_viewmodel.dart';

class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView({Key? key, required this.questions, required this.topic}) : super(key: key);
  final List<CourseTopicQuestions> questions;
  final CourseTopics topic;

  @override
  Widget builder(
    BuildContext context,
    TestQuestionViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: topic.topic, onTap: viewModel.back),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: viewModel.pageController,
          scrollBehavior: const ScrollBehavior(androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
          itemCount: questions.length,
          itemBuilder: (context, index) {
            final CourseTopicQuestions question = questions[index];
            return Container(
              width: screenWidth(context),
              height: screenHeight(context),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 70.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            '${questions.indexOf(question) + 1} of ${questions.length}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF78746D),
                            ),
                          ),
                          verticalSpaceMedium,
                          Text(
                            question.question!,
                            textAlign:
                                TextAlign.center, //to replace with the right list thus for UI purposes only for now
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF3C3A36),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFFBEBAB3)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CachedNetworkImage(
                          height: 400,
                          width: 541,
                          imageUrl: question.image!,
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                          fadeInDuration: const Duration(milliseconds: 800),
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  for (var choice in question.choices) Options(choice: choice),
                  Expanded(child: Container()),
                  MyButton(title: 'Continue', onTap: () => viewModel.proceed(index)),
                  verticalSpaceSmall
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  TestQuestionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestQuestionViewModel();
}
