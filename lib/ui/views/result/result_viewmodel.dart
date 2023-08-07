import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/icons_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ResultViewModel extends BaseViewModel {
  final _courseRepository = locator<CourseRepository>();
  final _navigationService = locator<NavigationService>();
  final iconList = [
    const IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  void init(UserProgress progress, String courseId, String topicId, int correct, int length) async {
    if (correct > progress.answered) {
      await setProgress(courseId, topicId, correct);
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
