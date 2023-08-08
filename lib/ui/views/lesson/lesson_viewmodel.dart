import 'package:edtech_mobile/model/course_topics.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/app.locator.dart';

class LessonViewModel extends BaseViewModel {
  LessonViewModel({required this.topic});

  int initialPage = 0;

  final _navigationService = locator<NavigationService>();
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  final pageController = PageController(initialPage: 0);
  final CourseTopics topic;

  void init() {
    loadingVideo();
  }

  void backToChooseLesson() {
    _navigationService.back();
  }

  void loadingVideo() {
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

  void animateToPage(int index) {
    pageController.animateToPage(index, duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    onPageChanged(index);
    rebuildUi();
  }

  void onPageChanged(int index) {
    initialPage = index;
    rebuildUi();
  }
}
