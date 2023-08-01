import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/model/user.dart';

abstract interface class CourseRepository {

  Future<List<Course>> getCourses(String search, List<String> coursesList);

  Future<Either<AppException, List<Course>>> getMyCourses(List<String> coursesList);

  Future<Either<AppException, List<CourseTopics>>> getMyCourseTopics({required String courseId});

  Future<Either<AppException, List<CourseTopicQuestions>>> getMyCourseTopicQuestions(
      {required String courseId, required String topicId});

  Future<void> createProgress({required String courseId, required String topicId, required UserProgress userProgress});

  Future<Either<AppException, UserProgress>> getProgress({required String courseId, required String topicId});
}
