import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/user.dart';

abstract interface class AuthService {
  Future<Either<AppException, None>> signUpWithEmail(
      {required String name, required String email, required String password});

  Future<Either<AppException, User>> login(
      {required String email, required String password});

  Future<void> logout();

  Future<Either<AppException, None>> forgetPassword({required String email});

  Future<Either<AppException, None>> updatePassword(String currentPassword,String password);

  Future<Either<AppException, Timestamp?>> getLastUpdatedPassword(String uid);

  Future<Either<AppException, User>> getCurrentUserData();
}
