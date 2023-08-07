import 'package:edtech_mobile/model/icons_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../model/courses.dart';
import '../../../model/user.dart';
import '../../../repository/course_repository.dart';

class ResultViewModel extends BaseViewModel {
  ResultViewModel({required this.course, required this.correctAnswer, required this.answerList});
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();

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
    for (int i=0; i<correctAnswer.length; i++) {
      if (answerList[i] == correctAnswer[i]) {
        testScore++;
      }
    }
    return testScore;
  }

  void init(UserProgress progress, String courseId, String topicId) async {
    final testScore = score();
    if (testScore > progress.answered) {
      await setProgress(courseId, topicId, testScore);
    }
  }

  Future<void> setProgress(String courseId, String topicId, int correct) async {
    await _courseRepository.createProgress(
        courseId: courseId, topicId: topicId, userProgress: UserProgress(topicId: topicId, answered: correct));
  }

  void popUntil(Course course) async {
    _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
    await _navigationService.navigateToChooseLessonView(course: course);
  }
}
