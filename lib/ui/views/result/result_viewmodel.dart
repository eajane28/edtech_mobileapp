import 'package:edtech_mobile/model/icons_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ResultViewModel extends BaseViewModel {
  ResultViewModel({required this.correctAnswer, required this.answerList});
  final _navigationService = locator<NavigationService>();
  final List answerList;
  final List correctAnswer;
  final iconList = [
    const IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  int score() {
    int index = 0;
    int score = 0;
    if (answerList[index] == correctAnswer[index]) {
      score++;
    } 
    index++;
    print(score);
    return score;
  }

  void back() {
    _navigationService.back();
  }
}
