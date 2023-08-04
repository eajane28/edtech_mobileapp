import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/icons_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/courses.dart';

class ResultViewModel extends BaseViewModel {
  ResultViewModel({required this.course, required this.correctAnswer, required this.answerList});
  final _navigationService = locator<NavigationService>();
  final List answerList;
  final List correctAnswer;
  final Course course;
  int index = 0;

  final iconList = [
    const IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  int score() {
    int testScore = 0;
    for (var answer in answerList) {
      if (answer == correctAnswer[index]) {
        testScore++;
      }
      index++;
    }
    return testScore;
  }

  void back() {
    _navigationService.navigateToChooseLessonView(course: course);
  }
}
