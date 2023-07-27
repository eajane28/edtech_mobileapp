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

// enum CourseType {
//   css,
//   ux,
//   swift,
//   ui,
//   html,
//   php,
//   java,
// }

class CoursesViewModel extends BaseViewModel {
  final AuthService authService = locator<AuthService>();
  final CourseRepository _repository = locator<CourseRepository>();
  final NavigationService _navigation = locator<NavigationService>();
  final TextEditingController searchController = TextEditingController();
  // final SnackbarService _snackbarService = locator<SnackbarService>();
  List<CardData> cardList = [];
  CardData? cardData;
  bool courseItemSelected = true;
  late List<String> selectedItems = [];

  init() async {
    setBusy(true);
    await _repository.getCourses(searchController.text, selectedItems).then((value) {
      if (selectedItems.isEmpty) {
        cardList = value;
      } else if (selectedItems.isNotEmpty) {
        cardList = value;
      } else {
        cardList = [];
      }
    });
    setBusy(false);
  }

  final coursesList = [
    const CoursesData(name: 'HTML/CSS'),
    const CoursesData(name: 'UI/UX'),
    const CoursesData(name: 'Swift'),
    const CoursesData(name: 'Web'),
    const CoursesData(name: 'Javascript'),
    const CoursesData(name: 'PHP'),
    const CoursesData(name: 'Java'),
    const CoursesData(name: 'Python'),
    const CoursesData(name: 'App Dev'),
    const CoursesData(name: 'Mobile App'),
    const CoursesData(name: 'Sql'),
    const CoursesData(name: 'Telecom'),
  ];

  onTap(CardData courseItem) {
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
