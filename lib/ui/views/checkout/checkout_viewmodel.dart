import 'package:edtech_mobile/app/app.dialogs.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckoutViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();

  void confirm(Course course) async {
    var confirm = await _dialogService.showCustomDialog(
        variant: DialogType.myConfirmation, title: 'Proceed Payment?');
    if (confirm != null && confirm.confirmed) {
      purchase(course);
    }
  }

  void purchase(Course course) async {
    setBusy(true);
    final response = await _paymentRepository.purchaseCourse(course);
    response.fold(
        (l) => _snackBarService.showSnackbar(
            message: l.message, duration: AppConstants.defDuration), (r) {
      _snackBarService.showSnackbar(
          message: "Successfully purchased course.",
          duration: AppConstants.defDuration);
      _navigationService.clearTillFirstAndShow(Routes.yourCourseView);
    });
    setBusy(false);
  }

  void back() {
    _navigationService.back();
  }
}
