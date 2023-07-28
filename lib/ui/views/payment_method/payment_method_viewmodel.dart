import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
// import 'package:edtech_mobile/model/payment_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/payment_data.dart';
import '../../../repository/payment_repository.dart';

class PaymentMethodViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final PaymentRepository _paymentService = locator<PaymentRepository>();


  List <PaymentData> paymentList = [];

  void init () async {
    setBusy(true);
    getPaymentMethod();
    setBusy(false);}

  void getPaymentMethod() async{
    // setBusy(true);
    final result = await _paymentService.getPaymentMethods();
    result.fold((l) => null, (r) => paymentList = r);
    // if(paymentList.isNotEmpty){
    //   return paymentList;
    // }
    // print(paymentList);
    // return null;
    // rebuildUi();
    // setBusy(false);
  }

  void proceed() {
    _navigationService.navigateToCheckoutView();
  }

  void back() {
    _navigationService.back();
  }
}
