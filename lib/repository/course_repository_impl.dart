import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';

class CourseRepositoryImpl implements CourseRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<CardData>> getCourses() async {
    List<CardData> cards = [];
    await db.collection(FirebaseConstants.listOfCourses).get().then((value) {
      if (value.docs.isNotEmpty) {
        var snapshots = value.docs;
        cards = snapshots.map((e) => CardData.fromJson(e.data())).toList();
      }
    });
    return cards;
  }
}
