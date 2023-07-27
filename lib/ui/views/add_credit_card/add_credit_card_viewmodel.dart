import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/payment_data.dart';
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
  FocusNode cardNumberFocusNode = FocusNode();
  FocusNode expiryFocusNode = FocusNode();
  FocusNode cvvFocusNode = FocusNode();

  PaymentData? paymentData;

  void init(){
    cardNumberController.addListener(getCardTypeFrmNumber);
  }

  void save() {
    print(paymentData!.paymentMethod);
    print(cardNumberController.text.replaceAll(' ', ''));
    _navigationService.navigateToPaymentAddedView();
  }

  void back() {
    _navigationService.back();
  }

  void getCardTypeFrmNumber() {
    String input = cardNumberController.text.replaceAll(' ', '');
    rebuildUi();
    CardType cardType = CardUtils.getCardTypeFrmNumber(input);
    rebuildUi();

      paymentData = PaymentData(paymentMethod: cardType.name,
          name: '', cardNumber: '', expiryDate: '',
          cvv: '');

    rebuildUi();
  }

  void onEditComplete(FocusNode next, BuildContext context){
    FocusScope.of(context).requestFocus(next);
  }
}
