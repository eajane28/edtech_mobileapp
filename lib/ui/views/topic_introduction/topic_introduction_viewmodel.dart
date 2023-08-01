import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/app.locator.dart';
import '../../../model/chosen_course_data.dart';

class TopicIntroductionViewModel extends BaseViewModel {
  TopicIntroductionViewModel({required this.topic});
  final _navigationService = locator<NavigationService>();
  late YoutubePlayerController youtubePlayerController =
      YoutubePlayerController(initialVideoId: "");
  final Topics topic;

  void init() {
    loadingVideo();
  }

  void backToChooseLesson() {
    _navigationService.back();
  }

  void loadingVideo() {
    setBusyForObject('video', true);
    if (topic.video != null) {
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(topic.video!)!,
        flags: const YoutubePlayerFlags(
          controlsVisibleAtStart: false,
          autoPlay: false,
          mute: false,
        ),
      );
    }
    setBusyForObject('video', false);
  }
}
