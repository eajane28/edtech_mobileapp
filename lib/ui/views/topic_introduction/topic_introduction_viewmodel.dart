import 'package:edtech_mobile/model/course_topics.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/app.locator.dart';

class TopicIntroductionViewModel extends BaseViewModel {
  TopicIntroductionViewModel({required this.topic});

  final _navigationService = locator<NavigationService>();
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  final CourseTopics topic;
  bool play = false;

  void init() {
    initVideo();
  }

  void backToChooseLesson() {
    _navigationService.back();
  }

  void playVideo() {
    loadingVideo();
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

  void loadingVideo() {
    youtubePlayerController.updateValue(YoutubePlayerValue(hasPlayed: true));
    youtubePlayerController.notifyListeners();
    play = true;
    notifyListeners();
  }

  void initVideo() {
    setBusyForObject('video', true);
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(topic.video!)!,
      flags: const YoutubePlayerFlags(
        controlsVisibleAtStart: false,
        autoPlay: false,
        mute: false,
      ),
    );
    setBusyForObject('video', false);
  }
}
