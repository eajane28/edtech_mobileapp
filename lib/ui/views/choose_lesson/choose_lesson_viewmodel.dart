import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/chosen_course_data.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ChooseLessonViewModel extends BaseViewModel {
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  bool play = false;
  final lessonList = [
    const ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Main Tags'),
    const ChosenCards(toImage: 'assets/bike.png', title: 'Tags for Headers'),
    const ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Style Tags')
  ];

  void init(Course course) async {
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
  }

  void initVideo(Course course) {
    youtubePlayerController.updateValue(YoutubePlayerValue(hasPlayed: true));
    youtubePlayerController.notifyListeners();
    play = true;
    notifyListeners();
  }

  void playVideo(Course course) {
    initVideo(course);
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
}
