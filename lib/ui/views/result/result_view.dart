import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/courses.dart';
import '../../../model/user.dart';
import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView(
      {Key? key,
      required this.answerList,
      required this.correctAnswerList,
      required this.course,
      required this.topicId,
      required this.progress})
      : super(key: key);

  final List answerList;
  final List correctAnswerList;
  final Course course;
  final UserProgress progress;
  final String topicId;

  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return WillPopScope(
        onWillPop: () async {
          viewModel.popUntil(course);
          return true;
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  MyAppBar(title: 'Results', onTap: () => viewModel.popUntil(course)),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Image.asset(
                          'assets/Cool Kids Xmas Morning.png',
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          'Congratulations',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Congratulations for getting ${viewModel.score()} correct answers!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF78746D),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var icon in viewModel.iconList) BuildIcon(iconsData: icon),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  void onViewModelReady(ResultViewModel viewModel) {
    viewModel.init(progress, course.id, topicId);
    super.onViewModelReady(viewModel);
  }

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel(course: course, answerList: answerList, correctAnswer: correctAnswerList);
}
