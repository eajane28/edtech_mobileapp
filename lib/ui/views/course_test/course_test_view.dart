import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/courses_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_test_viewmodel.dart';

class CourseTestView extends StackedView<CourseTestViewModel> {
  const CourseTestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CourseTestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: 'HTML', onTap: null),
              const Header(),
              for (var quiz in viewModel.quizList)
                quizCard(quiz, onTap: viewModel.begin)
            ],
          ),
        ),
      ),
    ));
  }

  @override
  CourseTestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseTestViewModel();
}

Widget quizCard(QuizData quiz, {void Function()? onTap}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
      child: Column(
        children: [
          Image.asset(
            quiz.image,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    quiz.quizNo,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE3562A),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    quiz.quizTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C3A36),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    quiz.subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF78746D),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFE3562A)),
                  borderRadius: BorderRadius.circular(16)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Text('Begin',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3C3A36),
                    )),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
