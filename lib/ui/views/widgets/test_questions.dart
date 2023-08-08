import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:edtech_mobile/ui/views/test_question/test_question_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/lesson_topics.dart';
import '../../../model/user.dart';
import 'button.dart';
import 'options.dart';

class TestQuestions extends ViewModelWidget<TestQuestionViewModel> {
  const TestQuestions({super.key, required this.questions, required this.progress, required this.topic});
  final Questions questions;
  final UserProgress progress;
  final Topics topic;
  @override
  Widget build(BuildContext context, TestQuestionViewModel viewModel) {
    int index = viewModel.selectedPosition;
    index++;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 70.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  '$index of ${viewModel.questions!.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF78746D),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Text(
                    questions.question!,
                    textAlign: TextAlign.center, //to replace with the right list thus for UI purposes only for now
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C3A36),
                    ),
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
            height: 191,
            decoration: const BoxDecoration(color: Color(0xFFBEBAB3)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CachedNetworkImage(
                imageUrl: questions.image!,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                fadeInDuration: const Duration(milliseconds: 800),
              ),
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: questions.choices.length,
            itemBuilder: (context, index) {
              return Options(
                choice: questions.choices[index],
                index: index,
                isPressed: viewModel.isSelected,
                onTap: (index) {
                  viewModel.answerList.add(questions.choices[index]);
                  viewModel.correctAnswer.add(questions.answer);
                  viewModel.change();
                },
              );
            }),
        MyButton(title: 'Continue', onTap: () => viewModel.proceed(topic.id, progress)),
      ],
    );
  }
}
