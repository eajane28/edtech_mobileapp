import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestQuestionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final choices = [
    Choices(choice: 'A.', description: '<h5>'),
    Choices(choice: 'B.', description: '<p>'),
    Choices(choice: 'C.', description: '<h1>')
  ];

  void proceed() {
    _navigationService.replaceWithResultView();
  }
}
