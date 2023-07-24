import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddCreditCardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  void save() {
    _navigationService.navigateToPaymentMethodView();
  }

  void back() {
    _navigationService.back();
  }
}
