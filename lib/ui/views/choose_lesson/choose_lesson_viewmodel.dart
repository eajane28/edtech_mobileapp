// import 'package:edtech_mobile/model/chosen_course_data.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/app.locator.dart';
import '../../../model/card_data.dart';
import '../../../model/chosen_course_data.dart';
import '../../../repository/course_repository.dart';

class ChooseLessonViewModel extends BaseViewModel {
  ChooseLessonViewModel({required this.course});
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();

  final Course course;
  late YoutubePlayerController youtubePlayerController =
      YoutubePlayerController(initialVideoId: "");
  List<Topics>? topics;
  final _snackBarService = locator<SnackbarService>();

  void init() {
    loadingVideo();
    getTopics();
  }

  void loadingVideo() {
    setBusyForObject('video', true);
    if (course.video != null) {
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(course.video!)!,
        flags: const YoutubePlayerFlags(
          controlsVisibleAtStart: false,
          autoPlay: false,
          mute: false,
        ),
      );
    }
    setBusyForObject('video', false);
  }

  Future<void> getTopics() async {
    setBusy(true);
    final result = await _courseRepository.getTopics(course.id);
    result.fold((l) => _snackBarService.showSnackbar(message: l.message),
        (r) => topics = r);
    setBusy(false);
  }
// , index: topics!.indexOf(topic)
  void onTap(Topics topic) {
    _navigationService.navigateToLessonView(topic: topic, course: course);
  }

  void backToYourCourses() {
    _navigationService.back();
  }
}
