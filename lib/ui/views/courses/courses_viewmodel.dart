import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/courses_data.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:stacked_services/stacked_services.dart';

class CoursesViewModel extends BaseViewModel {
  final AuthService authService = locator<AuthService>();
  final CourseRepository _repository = locator<CourseRepository>();
  final NavigationService _navigation = locator<NavigationService>();
  final TextEditingController searchController = TextEditingController();
  // final SnackbarService _snackbarService = locator<SnackbarService>();
  List<CardData> cardList = [];
  CardData? cardData;
  bool courseItemSelected = true;

 init() async {
    setBusy(true);
    await _repository.getCourses().then((value) {
      if(value.isNotEmpty){
        cardList = value;
      }
    });
    // print(cardList);
    // cardData = cardList[];
    setBusy(false);
  }

  final coursesList = [
    const CoursesData(name: 'CSS'),
    const CoursesData(name: 'UX'),
    const CoursesData(name: 'Swift'),
    const CoursesData(name: 'UI'),
    const CoursesData(name: 'HTML'),
    const CoursesData(name: 'PHP'),
    const CoursesData(name: 'Java'),
  ];

   onTap(CardData courseItem){
    _navigation.navigateToProductDetailView(course: courseItem);
  }

  void navigateToSearchView() {
    _navigation.navigateTo(Routes.searchView);
  }

  void chipClicked() {
    courseItemSelected = !courseItemSelected;
    notifyListeners();
  }
}
