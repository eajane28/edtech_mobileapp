// import 'dart:js';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';

class PaymentAddedViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  CardData? course;

  void continueToPaymentMethod(Course course) {
    _navigationService.navigateToPaymentMethodView(selectedCourse: course);
  }

  void back() {
    _navigationService.back();
  }
}
