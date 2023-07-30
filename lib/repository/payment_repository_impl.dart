import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  final _localStorage = locator<LocalStorage>();

  @override
  Future<Either<AppException, List<PaymentData>>> getPaymentMethods() async {
    try {
      return Right(await db
          .collection(FirebaseConstants.userCollection)
          .doc(_auth.currentUser!.uid)
          .collection(FirebaseConstants.paymentCollection)
          .orderBy('createdAt', descending: true)
          .get()
          .then((value) => value.docs.map((e) => PaymentData.fromJson(e.data())).toList()));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, None>> addPaymentMethod(PaymentData paymentData) async {
    try {
      var doc = db
          .collection(FirebaseConstants.userCollection)
          .doc(_auth.currentUser!.uid)
          .collection(FirebaseConstants.paymentCollection)
          .doc();
      await doc.set(
          paymentData
              .copyWith(
                  id: doc.id,
                  name: paymentData.name,
                  cardNumber: paymentData.cardNumber,
                  expiryDate: paymentData.expiryDate,
                  cvv: paymentData.cvv,
                  createdAt: DateTime.now())
              .toJson(),
          SetOptions(merge: true));
      return const Right(None());
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, None>> purchaseCourse(Course course) async {
    try {
      final user = await _localStorage.getCurrentUser();
      return user.fold((l) => Left(AppException(l.message)), (r) async {
        List<String> currentPurchasedCourse = [];
        if (r!.purchaseCourses.contains(course.id)) {
          return Left(AppException("You have purchased this course already"));
        }
        currentPurchasedCourse.addAll(r.purchaseCourses);
        currentPurchasedCourse.add(course.id);
        await db
            .collection(FirebaseConstants.userCollection)
            .doc(r.id)
            .set({'purchaseCourses': currentPurchasedCourse}, SetOptions(mergeFields: ['purchaseCourses']));
        await _localStorage
            .saveUser(r.copyWith(id: r.id, name: r.name, email: r.email, purchaseCourses: currentPurchasedCourse));
        return const Right(None());
      });
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }
}