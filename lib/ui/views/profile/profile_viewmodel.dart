import 'dart:io';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _localStorage = locator<LocalStorage>();
  final _snackBarService = locator<SnackbarService>();
  final ImagePicker _imagePicker = ImagePicker();
  late User user;

  void init() async {
    setBusy(true);
    await getUser();
    setBusy(false);
  }

  void navigateToYourCourseView() async {
    user.purchaseCourses.isEmpty
        ? _snackBarService.showSnackbar(message: "You have not purchased any courses yet",duration: AppConstants.defDuration)
        : await _navigationService.navigateToYourCourseView();
  }

  void back() {
    _navigationService.back();
  }

  void logout() async {
    await _authService.logout().then((value) => _navigationService.replaceWith(Routes.loginView));
  }

  Future<void> getUser() async {
    final response = await _localStorage.getCurrentUser();
    response.fold(
        (l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration), (r) => user = r!);
  }

  void pickImage() async {
    try {
      XFile? photo = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (photo != null) {
        await _authService.uploadPhoto(File(photo.path));
      }
    } catch (e) {
      _snackBarService.showSnackbar(message: AppConstants.myErrorMessage, duration: AppConstants.defDuration);
    }
  }

  Stream<String> getUserImage() => _authService.getUserImage();
}
