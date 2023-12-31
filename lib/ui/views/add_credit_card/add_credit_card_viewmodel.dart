import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:edtech_mobile/ui/views/add_credit_card/card_utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddCreditCardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  FocusNode cardNumberFocusNode = FocusNode();
  FocusNode expiryFocusNode = FocusNode();
  FocusNode cvvFocusNode = FocusNode();

  PaymentData? paymentData;
  Course? course;

  void init() {
    cardNumberController.addListener(getCardTypeFrmNumber);
  }

  void save(Course course) async {
    setBusy(true);
    paymentData = paymentData!.copyWith(
      name: nameController.text,
      cardNumber: cardNumberController.text.replaceAll(' ', ''),
      expiryDate: expiryDateController.text,
      cvv: cvvController.text,
    );
    final response = await _paymentRepository.addPaymentMethod(paymentData!);
    response.fold(
        (l) =>
            _snackBarService.showSnackbar(message: AppConstants.myErrorMessage, duration: const Duration(seconds: 2)),
        (r) => _navigationService.navigateToPaymentAddedView(course: course));
    setBusy(false);
  }

  void back() {
    _navigationService.back();
  }

  void getCardTypeFrmNumber() {
    CardType cardType = CardUtils.getCardTypeFrmNumber(
        cardNumberController.text.replaceAll(' ', ''));
    rebuildUi();

    paymentData = PaymentData(
        paymentMethod: cardType.name,
        name: '',
        cardNumber: '',
        expiryDate: '',
        cvv: '');

    rebuildUi();
  }

  void onEditComplete(FocusNode next, BuildContext context) {
    FocusScope.of(context).requestFocus(next);
  }
}
