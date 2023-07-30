import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
// import 'package:edtech_mobile/model/card_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class YourCourseViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _localStorage = locator<LocalStorage>();
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  List<String> purchasedCoursesIds = [];
  List<Course> yourCourseList = [];

  void init() async {
    setBusy(true);
    final user = await _localStorage.getCurrentUser();
    user.fold((l) => null, (r) async {
      final response = await _courseRepository.getMyCourses(r!.purchaseCourses);
      response.fold((l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration),
          (r) => yourCourseList = r);
      rebuildUi();
    });
    setBusy(false);
  }

  void back() {
    _navigationService.navigateToHomeView();
  }
}
