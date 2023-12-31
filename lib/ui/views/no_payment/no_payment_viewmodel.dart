import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NoPaymentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  Course? course;

  void continueToAddCreditCard(Course course) {
    _navigationService.navigateToAddCreditCardView(course: course);
  }

  void back() {
    _navigationService.back();
  }
}
