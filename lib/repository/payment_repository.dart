import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';

abstract interface class PaymentRepository {
  Future<Either<AppException, None>> setPaymentMethod({required String name, required cardNumber, required String expiry});
}