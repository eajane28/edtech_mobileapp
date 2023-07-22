// import 'package:edtech_mobile/app/app.locator.dart';
// import 'package:edtech_mobile/ui/views/signup/signup_viewmodel.dart';
// import 'package:stacked_services/stacked_services.dart';
//  final SnackbarService _snackbarService = locator<SnackbarService>();

import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/model/user.dart';

abstract interface class AuthService {
  Future<Either<AppException, None>> signUpWithEmail({required String name, required String email, required String password});

  Future<Either<AppException, User>> login({required String email, required String password});

  Future<void> logout();
}
