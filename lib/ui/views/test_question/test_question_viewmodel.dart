import 'package:edtech_mobile/app/app.locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestQuestionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final PageController pageController = PageController(initialPage: 0);

  void proceed(int index) {
    pageController.animateToPage(index+1, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void back() {
    _navigationService.back();
  }
}
