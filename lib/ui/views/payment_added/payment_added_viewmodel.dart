// import 'dart:js';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';

class PaymentAddedViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  CardData? course;

  void continueToPaymentMethod(course) {
    _navigationService.navigateToPaymentMethodView(course: course);
  }

  void back() {
    _navigationService.back();
  }
}
