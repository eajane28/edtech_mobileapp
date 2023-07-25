import 'package:edtech_mobile/model/card_data.dart';

abstract interface class Repository {

  Future<List<CardData>> getCourses();
}
