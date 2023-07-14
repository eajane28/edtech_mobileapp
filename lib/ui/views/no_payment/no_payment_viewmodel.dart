import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NoPaymentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void proceed() {
    _navigationService.replaceWithPaymentMethodView();
  }
}
