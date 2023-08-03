import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/lesson_topics.dart';
import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';

class CourseRepositoryImpl implements CourseRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Course>> getCourses(String search, List<String> coursesList) async {
    Query<Map<String, dynamic>> retrievedCourses = db.collection(FirebaseConstants.listOfCourses);

    if (coursesList.isNotEmpty) {
      retrievedCourses = retrievedCourses.where(FirebaseConstants.category, whereIn: coursesList.toList());
    }

    final searchresults =
        await retrievedCourses.get().then((value) => value.docs.map((e) => Course.fromJson(e.data())).toList());

    if (search.isNotEmpty) {
      return searchresults
          .where((listOfCourses) => listOfCourses.title.toLowerCase().contains(search.toLowerCase()))
          .toList();
      // isGreaterThanOrEqualTo: search);
    }
    return searchresults;
  }

  @override
  Future<Either<AppException, List<Course>>> getMyCourses(List<String> coursesList) async {
    try {
      return Right(await db
          .collection(FirebaseConstants.listOfCourses)
          .where('id', whereIn: coursesList)
          .get()
          .then((value) => value.docs.map((e) => Course.fromJson(e.data())).toList()));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, List<Topics>>> getTopics(String courseId) async {
    try {
      return Right(await db
          .collection(FirebaseConstants.listOfCourses)
          .doc(courseId)
          .collection(FirebaseConstants.topics)
          .get()
          .then((value) => value.docs.map((e) => Topics.fromJson(e.data())).toList()));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, List<Questions>>> getCards(String courseId, String topicId) async {
    try {
      return Right(await db
          .collection(FirebaseConstants.listOfCourses)
          .doc(courseId)
          .collection(FirebaseConstants.topics)
          .doc(topicId)
          .collection(FirebaseConstants.questions)
          .get()
          .then((value) => value.docs.map((e) => Questions.fromJson(e.data())).toList()));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }
}
