import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:edtech_mobile/model/intro_data.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class IntroViewModel extends BaseViewModel {
  var pageController = PageController();
  String buttonText = 'Next';
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  final introList = [
    IntroData(
      imagePage: 'assets/Cool Kids Long Distance Relationship.png',
      title: 'Learn anytime and anywhere',
      message:
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    ),
    IntroData(
      imagePage: 'assets/Cool Kids Staying Home.png',
      title: 'Find a course for you',
      message:
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    ),
    IntroData(
      imagePage: 'assets/Cool Kids High Tech.png',
      title: 'Improve your skills',
      message:
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    )
  ];
  int selectedPosition = 0;

  void onPageChanged(int value) {
    // print('onPageChanged $value');

    selectedPosition = value;
    changeText();

    rebuildUi();
  }

  void onNexPage() {
    if (selectedPosition < 2) {
      pageController.nextPage(
          curve: Curves.linear, duration: const Duration(milliseconds: 300));
    }

    changeText();
    startPage();
    rebuildUi();
  }

  void changeText() {
    buttonText = selectedPosition < 2 ? 'Next' : "Let's Start";
    rebuildUi();
  }

  void startPage() {
    if (buttonText == "Let's Start" && selectedPosition == 2) {
      _navigationService.replaceWithLoginView();
    }
  }

  void skip() {
    _navigationService.replaceWithLoginView();
  }
}
