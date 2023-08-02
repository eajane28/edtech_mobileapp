import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseTestViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void begin(course, topic) {
    _navigationService.navigateToTestQuestionView(topic: topic, course: course);
  }
}
