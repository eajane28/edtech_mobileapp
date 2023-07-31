import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
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
  PaymentData? paymentData;
  CardData? course;

  void init() async {
    setBusy(true);
    if (paymentMethods == null) {
      getPaymentMethods();
    }
    setBusy(false);
  }

  void getPaymentMethods() async {
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods);
  }

  void proceedToCheckout(PaymentData card, CardData course) {
    _navigationService.navigateToCheckoutView(card: card, course: course);
  }

  void addNewCreditCard(CardData course) {
    _navigationService.navigateToAddCreditCardView(course: course);
  }

  void back() {
    _navigationService.back();
  }
}
