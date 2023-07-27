// import 'package:edtech_mobile/model/card_data.dart';
// import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

final NavigationService _navigationService = locator<NavigationService>();
final CourseRepository _repository = locator<CourseRepository>();

class SearchViewModel extends BaseViewModel {
  List<CardData> searchList = []; //used for retrieving all the data from courseview
  CardData? cardData;
  final TextEditingController searchController = TextEditingController();
  late List<String> selectedItems = [];
  String? searchQuery;

  init() {
    searchCourses(searchController.text);
    searchController.addListener(() {
      searchCourses(searchController.text);
    });
  }

  Future<void> searchCourses(String search) async {
    if(search == searchQuery) return;
    setBusy(true);
    searchQuery = search;
     _repository.getCourses(searchController.text, selectedItems).then((value) {
      searchList = value;
      // if(searchList.isEmpty) {
      //   _navigationService.navigateToCourseNotfoundView();
      // }
      setBusy(false);
     });
    
  }


  void backToHomeView() {
    _navigationService.back();
  }

  onTap(CardData courseItem) {
    _navigationService.navigateToProductDetailView(course: courseItem);
  }
}
