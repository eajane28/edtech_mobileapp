import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/chosen_course_data.dart';
import '../../../model/quiz_data.dart';
import 'test_question_viewmodel.dart';

// ignore: must_be_immutable
class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView(this.topic, {Key? key}) : super(key: key);

  // Questions? questions;
  final Topics topic;

  @override
  Widget builder(
    BuildContext context,
    TestQuestionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //TO DO: create another widget for the questions that will be using rebuildUI
            child: Column(
              children: [
                MyAppBar(title: '', onTap: viewModel.back),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 70.0),
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          '1 of 20',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF78746D),
                          ),
                        ),
                        Text(
                          questions!.question,
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
                        imageUrl: questions!.image,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                        fadeInDuration: const Duration(milliseconds: 800),
                      ),
                    ),
                  ),
                ),
                for (var choices in viewModel.choices) Options(choices: choices),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 180.0, 16.0, 0),
                  child: MyButton(title: 'Continue', onTap: viewModel.proceed),
                )
              ],
            ),
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
      TestQuestionViewModel(topic);
}
