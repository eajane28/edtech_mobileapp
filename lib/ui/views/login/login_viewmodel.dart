import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/icons_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final iconList = [
    IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  bool isObscure = true;

  void changeIcon() {
    isObscure = !isObscure;
    rebuildUi();
  }

  void signUp() {
    _navigationService.navigateToSignupView();
  }

  void login() //dummy
  {
    _navigationService.navigateToHomeView();
  }
}
