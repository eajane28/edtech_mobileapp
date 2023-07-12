import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
   final _navigationService = locator<NavigationService>();


  // Place anything here that needs to happen before we get into the application

  void goto() async{
    await _navigationService.navigateToYourCourseView();
  }
}