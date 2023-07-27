import 'package:edtech_mobile/model/card_data.dart';

abstract interface class CourseRepository {

  Future<List<CardData>> getCourses(String search, List<String> coursesList);
}
