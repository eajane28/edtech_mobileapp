import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/courses_data.dart';
import 'package:stacked/stacked.dart';

class CoursesViewModel extends BaseViewModel {
  final coursesList = [
    CoursesData(name: '#CSS'),
    CoursesData(name: '#UX'),
    CoursesData(name: '#Swift'),
    CoursesData(name: '#UI')
  ];

  final cardList = [
    CardData(
        cardImage: 'assets/Cool Kids Discussion.png',
        price: '50',
        duration: '3 h 30 min',
        title: 'UI',
        description: 'Advanced mobile interface design'),
    CardData(
        cardImage: 'assets/Cool Kids Alone Time.png',
        price: '20',
        duration: '2 h',
        title: 'UI Advanced',
        description: ''),
  ];
}
