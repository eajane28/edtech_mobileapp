import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Future<Either<AppException, List<PaymentData>>> getPaymentMethods() async {
    try {
      return Right(await db
          .collection(FirebaseConstants.userCollection)
          .doc(_auth.currentUser!.uid)
          .collection(FirebaseConstants.paymentCollection)
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
                  cvv: paymentData.cvv)
              .toJson(),
          SetOptions(merge: true));
      return const Right(None());
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }
}
