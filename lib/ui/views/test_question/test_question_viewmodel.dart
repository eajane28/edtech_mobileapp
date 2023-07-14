import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:stacked/stacked.dart';

class TestQuestionViewModel extends BaseViewModel {

  final choices = [
    Choices(choice: 'A.', description: '<h5>'),
    Choices(choice: 'B.', description: '<p>'),
    Choices(choice: 'C.', description: '<h1>')
  ];
}
