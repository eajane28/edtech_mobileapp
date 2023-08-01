import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/choices_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/chosen_course_data.dart';
// import '../../../model/quiz_data.dart';
import '../../../model/quiz_data.dart';
import '../../../repository/course_repository.dart';

class TestQuestionViewModel extends BaseViewModel {
  TestQuestionViewModel(this.topic);
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();
  final _snackBarService = locator<SnackbarService>();
  List<Questions>? questions;
  // final Questions questions;
  final Topics topic;

  void init() {
    getQuiz();
  }

  final choices = [
    const ChoicesData(choices: 'A.', description: '<h5>'),
    const ChoicesData(choices: 'B.', description: '<p>'),
    const ChoicesData(choices: 'C.', description: '<h1>')
  ];

  Future<void> getQuiz()async{
    setBusy(true);
    final result = await _courseRepository.getCards(topic.id);
    result.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => questions= r);
    setBusy(false);
  }

  void proceed() {
    _navigationService.navigateToResultView();
  }

  void back() {
    _navigationService.back();
  }

}
