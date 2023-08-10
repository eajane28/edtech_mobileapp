import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/exceptions/app_exception.dart';
import 'package:edtech_mobile/exceptions/app_exception_constants.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/app_extension.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

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
  Future<Either<AppException, None>> forgetPassword(
      {required String email}) async {
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
  Future<Either<AppException, None>> updatePassword(
      String currentPassword, String newPassword) async {
    try {
      var response = await login(
          email: _auth.currentUser!.email!, password: currentPassword);
      return response.fold((l) => Left(AppException(l.message)), (r) async {
        try {
          // await Future.wait([
          await _auth.currentUser!.updatePassword(newPassword);
          await db.collection(FirebaseConstants.userCollection).doc(r.id).set(
              {"lastUpdatedPassword": DateTime.now().toTimestamp()},
              SetOptions(merge: true));
          await logout();
          // ]);
          return const Right(None());
        } catch (e) {
          return Left(AppException(e.toString()));
        }
      });
    } catch (e) {
      return Left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, Timestamp?>> getLastUpdatedPassword(
      String uid) async {
    try {
      return await db
          .collection(FirebaseConstants.userCollection)
          .doc(uid)
          .get()
          .then((value) => Right(value.data()!['lastUpdatedPassword']));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, User>> getCurrentUserData() async {
    try {
      return Right(await db
          .collection(FirebaseConstants.userCollection)
          .doc(_auth.currentUser!.uid)
          .get()
          .then((value) => User.fromJson(value.data()!)));
    } on FirebaseException catch (_) {
      return Left(AppException(AppConstants.myErrorMessage));
    }
  }

  @override
  Future<Either<AppException, None>> updateEmail(String currentPassword, String currentEmail, String newEmail)async {
    try {
      var response = await login(
          email: currentEmail, password: currentPassword);
      return response.fold((l) => Left(AppException(l.message)), (r) async {
        try {
          // await Future.wait([
          await _auth.currentUser!.updateEmail(newEmail);
          await db.collection(FirebaseConstants.userCollection).doc(r.id).set(
              {"email": newEmail},
              SetOptions(merge: true));
          await logout();
          // ]);
          return const Right(None());
        } catch (e) {
          return Left(AppException(e.toString()));
        }
      });
    } catch (e) {
      return Left(AppException(e.toString()));
    }
  }
  
  @override
  Future<Either<AppException, None>> updateName(String currentPassword, String currentName, String newName) async {
    final user = await getCurrentUserData();

    return user.fold((error) {
      return Left(error);
    }, (user) async {
      try {
        if (currentName != user.name) {
          return Left("current name not match!" as AppException);
        }
        await db
            .collection(FirebaseConstants.userCollection)
            .doc(_auth.currentUser!.uid)
            .update({"name": newName});
        await logout();
      } on FirebaseAuthException catch (error) {
        return Left(AppException(error.message.toString()));
      }
      return const Right(None());
    });
  }

  @override
  Future<Either<None, User>> facebookSignIn() async {
    final fb = FacebookLogin();
    try {
      // Log in
      await fb.logOut();
      final result = await fb.expressLogin();

      if (result.status == FacebookLoginStatus.success) {
        final FacebookAccessToken? accessToken = result.accessToken;
        final AuthCredential authCredential = FacebookAuthProvider.credential(accessToken!.token);
        UserCredential userCredential = await _auth.signInWithCredential(authCredential);
        final user = User(
            id: userCredential.user!.uid,
            email: await fb.getUserEmail() ?? '',
            name: userCredential.additionalUserInfo!.profile!['name'],
            profileImageUrl: await fb.getProfileImageUrl(width: 128) ?? '');
        await db.collection(FirebaseConstants.userCollection).doc(userCredential.user!.uid).set(user.toJson());
        await _localStorage.saveUser(user);
        return Right(user);
      } else {
        return const Left(None());
      }
    } catch (e) {
      return const Left(None());
    }
  }
}

