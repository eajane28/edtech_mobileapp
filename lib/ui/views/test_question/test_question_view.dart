import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
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
                appBar('', onTap: null),
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
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xFFBEBAB3)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset('assets/Cool Kids Brainstorming.png'),
                  ),
                ),
                for (var choices in viewModel.choices) option(choices),
                
                Padding(
                  padding: const EdgeInsets.only(top: 180.0),
                  child: button('Continue'),
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

Widget option (choices) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFFBEBAB3)
      ),
      borderRadius: BorderRadius.circular(8)
    ),
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        children: [
          Text(
            choices.choice,
            style: const TextStyle(
           fontSize : 16,
            fontWeight : FontWeight.w400,
            color : Color(0xFF3C3A36)   
            ),
            ),
            const SizedBox(width: 16),
            Text(
            choices.description,
            style: const TextStyle(
           fontSize : 16,
            fontWeight : FontWeight.w400,
            color : Color(0xFF3C3A36)   
            ),
            ),
        ],
      )),
  );
}
