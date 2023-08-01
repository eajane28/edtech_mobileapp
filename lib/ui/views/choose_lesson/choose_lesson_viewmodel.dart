import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ChooseLessonViewModel extends BaseViewModel {
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  bool play = false;
  List<CourseTopics> lessonList = [];

  void init(Course course) async {
    setBusy(true);
    await getTopics(course.id);
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
      setBusyForObject('video', false);
    }
    setBusy(false);
  }

  void initVideo() {
    youtubePlayerController.updateValue(YoutubePlayerValue(hasPlayed: true));
    youtubePlayerController.notifyListeners();
    play = true;
    notifyListeners();
  }

  void playVideo() {
    initVideo();
    rebuildUi();
  }

  void onVideoEnd() {
    if (youtubePlayerController.value.isFullScreen) {
      youtubePlayerController.toggleFullScreenMode();
    }
    youtubePlayerController.notifyListeners();
    play = false;
    rebuildUi();
  }

  Future<void> getTopics(String courseId) async {
    final response = await _courseRepository.getMyCourseTopics(courseId: courseId);
    response.fold((l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration),
        (r) => lessonList = r);
  }
}
