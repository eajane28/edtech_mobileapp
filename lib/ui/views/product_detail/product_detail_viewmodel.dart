// import 'dart:js';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// import '../../../model/card_data.dart';

class ProductDetailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  List<PaymentData> paymentMethods = [];
  // final CardData course;

  void addToCart(course) {
    _navigationService.navigateToNoPaymentView(course: course);
  }

  void purchaseCourse(context, course) async {
    setBusy(true);
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods = r);
    paymentMethods.isEmpty
        ? _navigationService.navigateToNoPaymentView(course: course)
        : _navigationService.navigateToPaymentMethodView(cards: paymentMethods, course: course);
    setBusy(false);
  }

  void backToHomeView() {
    _navigationService.back();
  }
}
