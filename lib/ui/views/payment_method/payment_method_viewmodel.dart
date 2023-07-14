import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PaymentMethodViewModel extends BaseViewModel {

final _navigationService = locator<NavigationService>();

  final paymentList = [
    PaymentData(
        image: 'assets/Mastercard.png',
        title: '**** **** **** 5738',
        subtitle: 'Expires 09/29'),
    PaymentData(
        image: 'assets/Visa.png',
        title: '**** **** **** 8897',
        subtitle: 'Expires 09/29'),
    // 'assets/Paypal.png',
    // 'assets/Google Pay.png',
    // 'assets/Apple Pay.png',
  ];

  void proceed() {
    _navigationService.replaceWithAddCreditCardView();
  }

}
