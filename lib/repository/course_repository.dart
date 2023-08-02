import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/card_data.dart';

import '../model/chosen_course_data.dart';
import '../model/quiz_data.dart';

abstract interface class CourseRepository {
  Future<List<Course>> getCourses(String search, List<String> coursesList);

  Future<Either<AppException, List<Course>>> getMyCourses(List<String> coursesList);

  Future<Either<AppException, List<Topics>>> getTopics(String courseId);

  Future<Either<AppException, List<Questions>>> getCards(String courseId, String topicId);
}
