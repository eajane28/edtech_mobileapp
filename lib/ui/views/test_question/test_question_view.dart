import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'test_question_viewmodel.dart';

class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                MyAppBar(title: '', onTap: null),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 70.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '1 of 20',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF78746D),
                          ),
                        ),
                        Text(
                          'Which tag for the biggest header?',
                          textAlign: TextAlign
                              .center, //to replace with the right list thus for UI purposes only for now
                          style: TextStyle(
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
                      child: Image.asset('assets/Cool Kids Brainstorming.png'),
                    ),
                  ),
                ),
                for (var choices in viewModel.choices)
                  Options(choices: choices),
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
  TestQuestionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestQuestionViewModel();
}
