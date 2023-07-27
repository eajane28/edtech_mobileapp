import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseNotfoundViewModel extends BaseViewModel {
  final TextEditingController searchController = TextEditingController();
  late List<String> selectedItems = [];
  List<CardData> searchList = [];
  final CourseRepository _repository = locator<CourseRepository>();
  final NavigationService _navigation = locator<NavigationService>();

  init() async {
    setBusy(true);
    await _repository.getCourses(searchController.text, selectedItems).then((value) {
      if (searchController.text.isNotEmpty) {
        searchList = value;
      }
    });
    setBusy(false);
  }
  void backToHomeView() {
    _navigation.navigateToHomeView();
  }
}
