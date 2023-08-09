import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/courses.dart';
import '../../../model/lesson_topics.dart';
import '../../../model/quiz_data.dart';

class LessonItemViewModel extends BaseViewModel {
  LessonItemViewModel({required this.course, required this.topic});

  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();
  late List<Questions> questions;
  late UserProgress progress;
  final Course course;
  final Topics topic;
  List<Topics>? topics;

  void init(Course course, Topics topic) async {
    setBusy(true);
    await getQuestions(course.id, topic.id);
    await getProgress(course, topic);
    await getTopics();
    rebuildUi();
    setBusy(false);
  }

  Future<void> getProgress(Course course, Topics topic) async {
    final response = await _courseRepository.getProgress(
        courseId: course.id, topicId: topic.id);
    response.fold(
        (l) => progress = UserProgress(topicId: topic.id), (r) => progress = r);
  }

  Future<void> getQuestions(String courseId, String topicId) async {
    final response =
        await _courseRepository.getCards(courseId: courseId, topicId: topicId);
    response.fold(
        (l) => _snackBarService.showSnackbar(
            message: l.message, duration: AppConstants.defDuration),
        (r) => questions = r);
  }

  Future<void> getTopics() async {
    setBusy(true);
    final result = await _courseRepository.getTopics(course.id);
    result.fold((l) => _snackBarService.showSnackbar(message: l.message),
        (r) => topics = r);
    setBusy(false);
  }

  void navigateToTopic() async {
    await _navigationService.navigateToLessonView(
        course: course, topic: topic, progress: progress, topics: topics!);
  }

  double getTopicProgress() {
    return progress.answered == 0 ? 0 : progress.answered / questions.length;
  }
}
