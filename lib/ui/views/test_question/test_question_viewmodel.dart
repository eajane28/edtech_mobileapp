import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/courses.dart';
import '../../../model/lesson_topics.dart';
// import '../../../model/quiz_data.dart';
import '../../../model/quiz_data.dart';
// import '../../../model/user.dart';
import '../../../model/user.dart';
import '../../../repository/course_repository.dart';
import '../../common/constants.dart';

class TestQuestionViewModel extends BaseViewModel {
  TestQuestionViewModel({required this.course, required this.topic});
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  var pageController = PageController();
  int selectedPosition = 0;
  bool isSelected = false;
  // final UserProgress progress;

  List<Questions>? questions;
  final Topics topic;
  final Course course;
  final answerList = [];
  int expectedAnswer = 1;
  final correctAnswer = [];

  void init() async {
    setBusy(true);
    await getQuestions(course.id, topic.id);
    setBusy(false);
  }

  Future<void> getQuestions(String courseId, String topicId) async {
    final response = await _courseRepository.getCards(courseId: courseId, topicId: topicId);
    response.fold((l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration),
        (r) => questions = r);
  }

  void proceed(String topicId, UserProgress progress) {
    if (selectedPosition < 9 && answerList.length == expectedAnswer) {
      pageController.nextPage(curve: Curves.linear, duration: const Duration(milliseconds: 300));
      selectedPosition++;
      expectedAnswer++;
    } else if (selectedPosition == 9 && answerList.length == expectedAnswer) {
      _navigationService.navigateToResultView(
          course: course, answerList: answerList, correctAnswerList: correctAnswer, progress: progress, topicId: topicId);
    }

    isSelected = false;
    notifyListeners();
  }

  void change() {
    isSelected = true;
    notifyListeners();
  }

  void back() {
    _navigationService.back();
  }
}
