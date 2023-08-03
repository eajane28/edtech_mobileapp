import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/app.locator.dart';
import '../../../model/chosen_course_data.dart';

class LessonViewModel extends BaseViewModel {
  LessonViewModel({required this.topic});
  final _navigationService = locator<NavigationService>();
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  final Topics topic;
  int selectedIndex = 0;
  bool isSelected = false;
  final PageController pageController = PageController(initialPage: 0);

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

  void onItemTapped(int value) {
    selectedIndex = value + 1;
    if (selectedIndex == 0 || selectedIndex == 1) {
      pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else if (selectedIndex == 2) {
      pageController.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      pageController.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void onPageChanged(int value) {
    selectedIndex = value;
    rebuildUi();
  }
}
