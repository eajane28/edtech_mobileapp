import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:stacked/stacked.dart';

class CourseTestViewModel extends BaseViewModel {
  
  final quizList = [
    QuizData(image: 'assets/Cool Kids Standing.png', quizNo: 'Quiz 1', quizTitle: 'Tags For Headers', subtitle: 'Let\'s put your memory on this topic test. Solve tasks and check your knowledge.'),
    QuizData(image: 'assets/Cool Kids Sitting.png', quizNo: 'Quiz 2', quizTitle: 'Tags For Headers', subtitle: 'Let\'s put your memory on this topic test. Solve tasks and check knowledge.')
  ];
}
