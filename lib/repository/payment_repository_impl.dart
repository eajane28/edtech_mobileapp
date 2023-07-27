import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/ui/common/constants.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<void> getPaymentMethod(String name, String cardNumber, String expiry, String cvv) {
    db.collection(FirebaseConstants.payment).doc().set(PaymentData(
            name: name,
            cardNumber: cardNumber,
            expiryDate: expiry,
            cvv: cvv,
            paymentMethod: '') // not sure with the credit card
        .toJson());
    // TODO: implement makePayment
    throw UnimplementedError();
  }
}
