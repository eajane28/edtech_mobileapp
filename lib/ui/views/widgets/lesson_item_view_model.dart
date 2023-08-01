import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LessonItemViewModel extends BaseViewModel {
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();
  late UserProgress progress;
  late List<CourseTopicQuestions> questions;


  void init(Course course, CourseTopics topic) async {
    setBusy(true);
    await getQuestions(course.id, topic.id);
    await getProgress(course, topic);
    rebuildUi();
    setBusy(false);
  }

  Future<void> getProgress(Course course, CourseTopics topic) async {
    final response = await _courseRepository.getProgress(courseId: course.id, topicId: topic.id);
    response.fold((l) => progress = UserProgress(topicId: topic.id), (r) => progress = r);
  }

  Future<void> getQuestions(String courseId, String topicId) async {
    final response = await _courseRepository.getMyCourseTopicQuestions(courseId: courseId, topicId: topicId);
    response.fold((l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration), (
        r) => questions = r);
  }

  void navigateToTopic() async {
    await _navigationService.navigateToTestQuestionView();
  }
}
