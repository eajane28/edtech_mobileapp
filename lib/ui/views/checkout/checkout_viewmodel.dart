import 'package:edtech_mobile/app/app.dialogs.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckoutViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  void confirm() async{
    var confirm = await _dialogService.showCustomDialog(
      variant: DialogType.myConfirmation,
      title: 'Proceed Payment?'
    );
    if(confirm != null && confirm.confirmed) {
      _navigationService.navigateToYourCourseView();
    }
  }

  void back() {
    _navigationService.back();
  }
}
