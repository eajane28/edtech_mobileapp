import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/exceptions/app_exception_constants.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

class AuthServiceImpl implements AuthService {
  final _auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final _localStorage = locator<LocalStorage>();

  @override
  Future<Either<AppException, None>> signUpWithEmail(
      {required String name,
      required String email,
      required String password}) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (credential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      } else {
        db
            .collection(FirebaseConstants.userCollection)
            .doc(credential.user!.uid)
            .set(User(id: credential.user!.uid, email: email, name: name)
                .toJson());
        return const Right(None());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(AppException(e.message!));
      } else if (e.code == 'email-already-in-use') {
        return Left(AppException(e.message!));
      } else {
        return Left(
            AppException("Something went wrong!\nMaybe it is on our side"));
      }
    }
  }

  @override
  Future<Either<AppException, User>> login(
      {required String email, required String password}) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (userCredential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      } else {
        final user = await db
            .collection(FirebaseConstants.userCollection)
            .doc(userCredential.user!.uid)
            .get();
        if (user.exists) {
          final userObj = User.fromJson(user.data()!);
          await _localStorage.saveUser(userObj);
          return Right(userObj);
        } else {
          return Left(AppException(AppExceptionConstants.userNotFound));
        }
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(AppException('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        return Left(AppException('Wrong password provided for that user.'));
      } else {
        return Left(
            AppException("Something went wrong!\nMaybe it is on our side"));
      }
    }
  }

  @override
  Future<void> logout() async {
    return await _auth
        .signOut()
        .then((value) async => await _localStorage.clearUser());
  }

  @override
  Future<Either<AppException, None>> forgetPassword({required String email}) async{
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const Right(None());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(AppException('No user found for that email.'));
      } else {
        return Left(
            AppException("Something went wrong!\nMaybe it is on our side"));
      }
    }
  }

  @override
  Future<Either<AppException, None>> updatePassword(String currentPassword, String newPassword) async {
    try {
      await login(email: _auth.currentUser!.email!, password: currentPassword)
          .then((value) async {
            await _auth.currentUser!.updatePassword(newPassword).then((value) async => await db
          .collection(FirebaseConstants.userCollection)
          .doc(_auth.currentUser!.uid)
          .set({"lastUpdatedPassword": Timestamp.fromDate(DateTime.now())}, SetOptions(merge: true)));
          })
          .then((value) async => await logout());
      return const Right(None());
    } on FirebaseAuthException catch (e) {
      return Left(AppException(e.message!));
    }
  }
}
