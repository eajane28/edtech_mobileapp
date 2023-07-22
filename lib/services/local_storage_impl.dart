import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  @override
  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userKey, jsonEncode(user.toJson()));
  }

  @override
  Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(userKey);
  }

  @override
  Future<Either<AppException, User?>> getCurrentUser() async {
    final shared = await SharedPreferences.getInstance();
    final user = shared.getString(userKey);
    if (user != null) {
      return Right(User.fromJson(jsonDecode(user)));
    } else {
      return Left(AppException("Something went wrong!\nMaybe it is on our side"));
    }
  }
}
