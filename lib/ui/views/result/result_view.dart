import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView(
      {Key? key,
      required this.correct,
      required this.length,
      required this.course,
      required this.topicId,
      required this.progress})
      : super(key: key);
  final int correct;
  final int length;
  final Course course;
  final String topicId;
  final UserProgress progress;

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
        appBar: MyAppBar(title: 'Results', onTap: () => viewModel.popUntil(course)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Expanded(
                  child: Display(
                      image: 'assets/Cool Kids Xmas Morning.png',
                      title: 'Congratulations',
                      subtitle: correct == length
                          ? 'Congratulations for getting all the answers correct!'
                          : 'You got $correct out of $length'),
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
      ),
    );
  }

  @override
  void onViewModelReady(ResultViewModel viewModel) {
    viewModel.init(progress, course.id, topicId, correct, length);
    super.onViewModelReady(viewModel);
  }

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel();
}
