import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseTestViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();

  List<CourseTopicQuestions> quizList = [];

  void begin(Course course, CourseTopics topic, UserProgress progress) async {
    await _navigationService.navigateToTestQuestionView(
        questions: quizList, topic: topic, course: course, progress: progress);
  }

  Future<void> getQuestions(Course course, CourseTopics topic) async {
    final response = await _courseRepository.getMyCourseTopicQuestions(courseId: course.id, topicId: topic.id);
    response.fold((l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration),
        (r) => quizList = r);
  }
}
