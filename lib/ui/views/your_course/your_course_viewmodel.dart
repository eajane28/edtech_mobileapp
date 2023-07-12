import 'package:edtech_mobile/model/card_data.dart';
import 'package:stacked/stacked.dart';

class YourCourseViewModel extends BaseViewModel {
  final yourCourseList = [
    CardData(
        cardImage: 'assets/Cool Kids Alone.png',
        price: '',
        duration: 'Left 1 h 20 min ',
        title: 'Swift ',
        description: 'Advanced iOS apps'),
    CardData(
        cardImage: 'assets/Cool Kids Performing.png',
        price: '',
        duration: 'Left 1 h 20 min ',
        title: 'Scrum',
        description: 'Advanced project organization course'),
  ];
}
