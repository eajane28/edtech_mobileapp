import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/card_data.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  late final Course course;

  void navigateToYourCourseView() async {
    await _navigationService.navigateToYourCourseView(course: course);
  }

  void back() {
    _navigationService.back();
  }

  void logout() async {
    await _authService
        .logout()
        .then((value) => _navigationService.replaceWith(Routes.loginView));
  }
}
