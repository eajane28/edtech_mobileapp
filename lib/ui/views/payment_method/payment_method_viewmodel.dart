import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
// import 'package:edtech_mobile/model/payment_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';

// import '../../../model/payment_data.dart';
// import '../../../repository/payment_repository.dart';

class PaymentMethodViewModel extends BaseViewModel {
  PaymentMethodViewModel({this.paymentMethods});

  final _navigationService = locator<NavigationService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  List<PaymentData>? paymentMethods;
  late PaymentData selectedPaymentData;
  int groupValue = 0;
  void init() async {
    setBusy(true);
    selectedPaymentData = paymentMethods![groupValue];
    setBusy(false);
  }

  Future<void> getPaymentMethods() async {
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods = r);
  }

  void proceed(Course course) {
    _navigationService.navigateToCheckoutView(selectedCourse: course, selectedPayment: selectedPaymentData);

  void addNewCreditCard(CardData course) {
    _navigationService.navigateToAddCreditCardView(course: course);
  }

  void back() {
    _navigationService.back();
  }

  void selectedCard(PaymentData card) {
    groupValue = paymentMethods!.indexOf(card);
    print(paymentMethods!.length);
    selectedPaymentData = card;
    notifyListeners();
  }
}
