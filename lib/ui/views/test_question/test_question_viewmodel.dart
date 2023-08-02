import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';
import '../../../model/chosen_course_data.dart';
// import '../../../model/quiz_data.dart';
import '../../../model/quiz_data.dart';
import '../../../repository/course_repository.dart';

class TestQuestionViewModel extends BaseViewModel {
  TestQuestionViewModel({required this.course, required this.topic});
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  var pageController = PageController();
  int selectedPosition = 0;

  List<Questions>? questions;
  final Topics topic;
  final Course course;
  final answerList = [];
  int expectedAnswer = 1;

  void init() {
    getQuiz();
  }

  Future<void> getQuiz() async {
    setBusy(true);
    final result = await _courseRepository.getCards(course.id, topic.id);
    result.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => questions = r);
    setBusy(false);
  }

  void proceed() {
    if (selectedPosition < 9 && answerList.length == expectedAnswer) {
      pageController.nextPage(curve: Curves.linear, duration: const Duration(milliseconds: 300));
      selectedPosition++;
      expectedAnswer++;
    } else if (selectedPosition == 9 && answerList.length == expectedAnswer) {
      _navigationService.navigateToResultView();
    }
  }

  void back() {
    _navigationService.back();
  }
}
