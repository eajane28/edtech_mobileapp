import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/courses_chipdata.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/user.dart';
import '../../../services/local_storage.dart';
import '../../common/constants.dart';

class CoursesViewModel extends BaseViewModel {
  final AuthService authService = locator<AuthService>();
  final CourseRepository _repository = locator<CourseRepository>();
  final NavigationService _navigation = locator<NavigationService>();
  final TextEditingController searchController = TextEditingController();
  final _localStorage = locator<LocalStorage>();
  final _snackBarService = locator<SnackbarService>();
  List<Course> cardList = [];
  Course? cardData;
  bool courseItemSelected = true;
  late List<String> selectedItems = [];
  late User user;

  init() async {
    setBusy(true);
    await getUser();
    getCourses();
    setBusy(false);
  }

  void getCourses() async {
    setBusyForObject('courses', true);
    await _repository.getCourses(searchController.text, selectedItems).then((value) {
    //   if (selectedItems.isEmpty) {
    //     cardList = value;
    //   } else if (selectedItems.isNotEmpty) {
    //     cardList = value;
    //   } else {
    //     cardList = [];
    //   }
    cardList = value;
  });
    setBusyForObject('courses', false);
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

  onTap(Course courseItem) async {
    user.purchaseCourses.contains(courseItem.id)
        ? await _navigation.navigateToChooseLessonView(course: courseItem)
        : await _navigation.navigateToProductDetailView(course: courseItem);
  }

  void navigateToSearchView() {
    _navigation.navigateTo(Routes.searchView);
  }

  void chipClicked() {
    courseItemSelected = !courseItemSelected;
    notifyListeners();
  }

  Future<void> getUser() async {
    final response = await _localStorage.getCurrentUser();
    response.fold(
        (l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration), (r) => user = r!);
  }
}
