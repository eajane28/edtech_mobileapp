import 'package:edtech_mobile/model/card_data.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  final searchList = [
    CardData(
        cardImage: 'assets/High Tech.png',
        price: '50',
        duration: '3 h 30 min',
        title: 'UI Advanced',
        description: 'Advanced mobile interface design'),
    CardData(
        cardImage: 'assets/Cool Kids Alone Time.png',
        price: '50',
        duration: '3 h 30 min',
        title: 'UI',
        description: 'Advanced web applications'),
  ];
}
