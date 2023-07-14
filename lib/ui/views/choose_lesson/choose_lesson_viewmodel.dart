import 'package:edtech_mobile/model/chosen_course_data.dart';
import 'package:stacked/stacked.dart';

class ChooseLessonViewModel extends BaseViewModel {
  final lessonList = [
    ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Main Tags'),
    ChosenCards(toImage: 'assets/bike.png', title: 'Tags for Headers'),
    ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Style Tags')
  ];
}
