import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/choices_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestQuestionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final choices = [
    const ChoicesData(choices: 'A.', description: '<h5>'),
    const ChoicesData(choices: 'B.', description: '<p>'),
    const ChoicesData(choices: 'C.', description: '<h1>')
  ];

  void proceed() {
    _navigationService.navigateToResultView();
  }
}
