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
  Future<Either<AppException, None>> setPaymentMethod({required String name,required String cardNumber,required String expiry,required String cvv}) async {
    final user = _auth.currentUser;
    db.collection(FirebaseConstants.payment).doc().set(PaymentData(
            creditCardName: name,
            creditCardNumber: cardNumber,
            creditCardExpiryDate: expiry,
            creditCardCVV: cvv) // not sure with the credit card
        .toJson());
  }

  
}