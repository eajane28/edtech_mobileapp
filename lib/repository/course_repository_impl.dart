import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/repository/course_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';

class CourseRepositoryImpl implements CourseRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<CardData>> getCourses(String search, List<String> coursesList) async {
    Query<Map<String, dynamic>> retrievedCourses = db.collection(FirebaseConstants.listOfCourses);

    if (coursesList.isNotEmpty) {
      retrievedCourses = retrievedCourses.where(FirebaseConstants.category, whereIn: coursesList.toList());
    }
    
    final searchresults = await retrievedCourses.get().then((value)=> value.docs.map((e) => CardData.fromJson(e.data())).toList());
    
    if (search.isNotEmpty) {
      return searchresults.where((listOfCourses) => listOfCourses.title.toLowerCase().contains(search.toLowerCase())).toList(); 
      // isGreaterThanOrEqualTo: search);
    }
    return searchresults;
    // List<CardData> cards = [];
    // await db.collection(FirebaseConstants.listOfCourses).get().then((value) {
    //   if (value.docs.isNotEmpty) {
    //     var snapshots = value.docs;
    //     cards = snapshots.map((e) => CardData.fromJson(e.data())).toList();
    //   }
    // });
    // return cards;
  }
}
