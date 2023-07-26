// import 'package:edtech_mobile/model/card_data.dart';
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
  List<CardData> searchList = [];
  CardData? cardData;
  final TextEditingController searchController = TextEditingController();

  init() async {
    setBusy(true);
    await _repository.getCourses().then((value) {
      if (value.isNotEmpty) {
        searchList = value;
      }
    });
    setBusy(false);
  }

  void backToHomeView() {
    _navigationService.back();
  }

  onTap(CardData courseItem) {
    _navigationService.navigateToProductDetailView(course: courseItem);
  }
}
