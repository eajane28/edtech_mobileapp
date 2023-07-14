import 'package:edtech_mobile/model/payment_data.dart';
import 'package:stacked/stacked.dart';

class PaymentMethodViewModel extends BaseViewModel {
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
}
