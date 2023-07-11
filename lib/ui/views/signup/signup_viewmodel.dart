import 'package:stacked/stacked.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  bool isObscure = true;

  void changeIcon() {
    isObscure = !isObscure;
    rebuildUi();
  }

  void logIn() {
    _navigationService.replaceWithLoginView();
  }
}