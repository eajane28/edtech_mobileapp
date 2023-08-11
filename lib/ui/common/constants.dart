class FirebaseConstants {
  FirebaseConstants._();
  static const userCollection = 'users';
  static const listOfCourses = 'courses';
  static const category = 'category';
  static const paymentCollection = 'creditCardDetails';
  static const topics = 'topics';
  static const questions = 'questions';
  static const progress = 'progress';
}

class AppConstants {
  AppConstants._();

  static const userKey = 'id';
  static const lastUpdatedPassword = "LAST_UPDATED_PASSWORD";
  static const String myErrorMessage =
      "Something went wrong. \nPlease try again later or contact the administrator.";

  //default duration for snackbars
  static const defDuration = Duration(milliseconds: 2000);
}
