import 'package:edtech_mobile/model/chosen_course_data.dart';
import 'package:stacked/stacked.dart';

class ChooseLessonViewModel extends BaseViewModel {
  final lessonList = [
    const ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Main Tags'),
    const ChosenCards(toImage: 'assets/bike.png', title: 'Tags for Headers'),
    const ChosenCards(toImage: 'assets/Cool Kids Study.png', title: 'Style Tags')
  ];
}
