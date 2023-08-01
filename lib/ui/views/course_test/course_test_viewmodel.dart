import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseTestViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final quizList = [
    const QuizData(
        image: 'assets/Cool Kids Standing.png',
        quizNo: 'Quiz 1',
        quizTitle: 'Tags For Headers',
        subtitle:
            'Let\'s put your memory on this topic test. Solve tasks and check your knowledge.'),
    const QuizData(
        image: 'assets/Cool Kids Sitting.png',
        quizNo: 'Quiz 2',
        quizTitle: 'Tags For Headers',
        subtitle:
            'Let\'s put your memory on this topic test. Solve tasks and check knowledge.')
  ];

  void begin() {
    _navigationService.navigateToTestQuestionView();
  }
}
