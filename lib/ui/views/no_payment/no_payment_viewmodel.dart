import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';

class NoPaymentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  CardData ? course;

  void continueToAddCreditCard({required CardData course}) {
    _navigationService.navigateToAddCreditCardView(course: course);
  }

  void back() {
    _navigationService.back();
  }
}
