import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/payment_data.dart';

abstract interface class PaymentRepository {
  Future<Either<AppException, List<PaymentData>>> getPaymentMethods();

  Future<Either<AppException, None>> addPaymentMethod(PaymentData paymentData);

  Future<Either<AppException, None>> purchaseCourse(Course course);
}
