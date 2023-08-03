import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestQuestionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final PageController pageController = PageController(initialPage: 0);
  int? selectedIndex;
  bool? correct;
  int corrected = 0;

  void proceed(int index, int length, Course course, String topicId, UserProgress progress) {
    Future.delayed(const Duration(milliseconds: 600), () {
      if (length == index + 1) {
        _navigationService.navigateToResultView(
            correct: corrected, length: length, course: course, topicId: topicId, progress: progress);
      }
      pageController.animateToPage(index + 1, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      selectedIndex = null;
      correct = null;
    });
    rebuildUi();
  }

  void back() {
    _navigationService.back();
  }

  check(String correctAnswer, String answer, int choiceIndex) {
    selectedIndex = choiceIndex;
    correct = correctAnswer == answer;
    correct! ? corrected++ : corrected;
    notifyListeners();
  }
}
