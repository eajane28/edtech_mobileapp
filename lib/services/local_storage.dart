import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/user.dart';

abstract interface class LocalStorage {
  Future<void> saveUser(User user);

  Future<Either<AppException, User?>> getCurrentUser();

  Future<void> clearUser();

  Future<void> setLastUpdatedPassword();

  Future<String?> getLastUpdatedPassword();
}
