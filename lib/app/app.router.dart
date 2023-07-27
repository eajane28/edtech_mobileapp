// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edtech_mobile/model/card_data.dart' as _i25;
import 'package:edtech_mobile/ui/views/add_credit_card/add_credit_card_view.dart'
    as _i22;
import 'package:edtech_mobile/ui/views/checkout/checkout_view.dart' as _i21;
import 'package:edtech_mobile/ui/views/choose_lesson/choose_lesson_view.dart'
    as _i10;
import 'package:edtech_mobile/ui/views/course_notfound/course_notfound_view.dart'
    as _i19;
import 'package:edtech_mobile/ui/views/course_test/course_test_view.dart'
    as _i12;
import 'package:edtech_mobile/ui/views/forgot_password/forgot_password_view.dart'
    as _i23;
import 'package:edtech_mobile/ui/views/home/home_view.dart' as _i2;
import 'package:edtech_mobile/ui/views/intro/intro_view.dart' as _i4;
import 'package:edtech_mobile/ui/views/lesson/lesson_view.dart' as _i11;
import 'package:edtech_mobile/ui/views/login/login_view.dart' as _i5;
import 'package:edtech_mobile/ui/views/no_payment/no_payment_view.dart' as _i16;
import 'package:edtech_mobile/ui/views/not_saved/not_saved_view.dart' as _i15;
import 'package:edtech_mobile/ui/views/payment_added/payment_added_view.dart'
    as _i18;
import 'package:edtech_mobile/ui/views/payment_method/payment_method_view.dart'
    as _i20;
import 'package:edtech_mobile/ui/views/product_detail/product_detail_view.dart'
    as _i9;
import 'package:edtech_mobile/ui/views/result/result_view.dart' as _i14;
import 'package:edtech_mobile/ui/views/saved/saved_view.dart' as _i17;
import 'package:edtech_mobile/ui/views/search/search_view.dart' as _i8;
import 'package:edtech_mobile/ui/views/signup/signup_view.dart' as _i6;
import 'package:edtech_mobile/ui/views/startup/startup_view.dart' as _i3;
import 'package:edtech_mobile/ui/views/test_question/test_question_view.dart'
    as _i13;
import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart'
    as _i7;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i26;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/';

  static const introView = '/intro-view';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const yourCourseView = '/your-course-view';

  static const searchView = '/search-view';

  static const productDetailView = '/product-detail-view';

  static const chooseLessonView = '/choose-lesson-view';

  static const lessonView = '/lesson-view';

  static const courseTestView = '/course-test-view';

  static const testQuestionView = '/test-question-view';

  static const resultView = '/result-view';

  static const notSavedView = '/not-saved-view';

  static const noPaymentView = '/no-payment-view';

  static const savedView = '/saved-view';

  static const paymentAddedView = '/payment-added-view';

  static const courseNotfoundView = '/course-notfound-view';

  static const paymentMethodView = '/payment-method-view';

  static const checkoutView = '/checkout-view';

  static const addCreditCardView = '/add-credit-card-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const all = <String>{
    homeView,
    startupView,
    introView,
    loginView,
    signupView,
    yourCourseView,
    searchView,
    productDetailView,
    chooseLessonView,
    lessonView,
    courseTestView,
    testQuestionView,
    resultView,
    notSavedView,
    noPaymentView,
    savedView,
    paymentAddedView,
    courseNotfoundView,
    paymentMethodView,
    checkoutView,
    addCreditCardView,
    forgotPasswordView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.introView,
      page: _i4.IntroView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i6.SignupView,
    ),
    _i1.RouteDef(
      Routes.yourCourseView,
      page: _i7.YourCourseView,
    ),
    _i1.RouteDef(
      Routes.searchView,
      page: _i8.SearchView,
    ),
    _i1.RouteDef(
      Routes.productDetailView,
      page: _i9.ProductDetailView,
    ),
    _i1.RouteDef(
      Routes.chooseLessonView,
      page: _i10.ChooseLessonView,
    ),
    _i1.RouteDef(
      Routes.lessonView,
      page: _i11.LessonView,
    ),
    _i1.RouteDef(
      Routes.courseTestView,
      page: _i12.CourseTestView,
    ),
    _i1.RouteDef(
      Routes.testQuestionView,
      page: _i13.TestQuestionView,
    ),
    _i1.RouteDef(
      Routes.resultView,
      page: _i14.ResultView,
    ),
    _i1.RouteDef(
      Routes.notSavedView,
      page: _i15.NotSavedView,
    ),
    _i1.RouteDef(
      Routes.noPaymentView,
      page: _i16.NoPaymentView,
    ),
    _i1.RouteDef(
      Routes.savedView,
      page: _i17.SavedView,
    ),
    _i1.RouteDef(
      Routes.paymentAddedView,
      page: _i18.PaymentAddedView,
    ),
    _i1.RouteDef(
      Routes.courseNotfoundView,
      page: _i19.CourseNotfoundView,
    ),
    _i1.RouteDef(
      Routes.paymentMethodView,
      page: _i20.PaymentMethodView,
    ),
    _i1.RouteDef(
      Routes.checkoutView,
      page: _i21.CheckoutView,
    ),
    _i1.RouteDef(
      Routes.addCreditCardView,
      page: _i22.AddCreditCardView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i23.ForgotPasswordView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.IntroView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.IntroView(),
        settings: data,
      );
    },
    _i5.LoginView: (data) {
      final args = data.getArgs<LoginViewArguments>(
        orElse: () => const LoginViewArguments(),
      );
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.LoginView(key: args.key),
        settings: data,
      );
    },
    _i6.SignupView: (data) {
      final args = data.getArgs<SignupViewArguments>(
        orElse: () => const SignupViewArguments(),
      );
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.SignupView(key: args.key),
        settings: data,
      );
    },
    _i7.YourCourseView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.YourCourseView(),
        settings: data,
      );
    },
    _i8.SearchView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.SearchView(),
        settings: data,
      );
    },
    _i9.ProductDetailView: (data) {
      final args = data.getArgs<ProductDetailViewArguments>(nullOk: false);
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.ProductDetailView(args.course, key: args.key),
        settings: data,
      );
    },
    _i10.ChooseLessonView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ChooseLessonView(),
        settings: data,
      );
    },
    _i11.LessonView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.LessonView(),
        settings: data,
      );
    },
    _i12.CourseTestView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.CourseTestView(),
        settings: data,
      );
    },
    _i13.TestQuestionView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.TestQuestionView(),
        settings: data,
      );
    },
    _i14.ResultView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ResultView(),
        settings: data,
      );
    },
    _i15.NotSavedView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.NotSavedView(),
        settings: data,
      );
    },
    _i16.NoPaymentView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.NoPaymentView(),
        settings: data,
      );
    },
    _i17.SavedView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.SavedView(),
        settings: data,
      );
    },
    _i18.PaymentAddedView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.PaymentAddedView(),
        settings: data,
      );
    },
    _i19.CourseNotfoundView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.CourseNotfoundView(),
        settings: data,
      );
    },
    _i20.PaymentMethodView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.PaymentMethodView(),
        settings: data,
      );
    },
    _i21.CheckoutView: (data) {
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.CheckoutView(),
        settings: data,
      );
    },
    _i22.AddCreditCardView: (data) {
      final args = data.getArgs<AddCreditCardViewArguments>(
        orElse: () => const AddCreditCardViewArguments(),
      );
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i22.AddCreditCardView(key: args.key),
        settings: data,
      );
    },
    _i23.ForgotPasswordView: (data) {
      final args = data.getArgs<ForgotPasswordViewArguments>(
        orElse: () => const ForgotPasswordViewArguments(),
      );
      return _i24.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.ForgotPasswordView(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoginViewArguments {
  const LoginViewArguments({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant LoginViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignupViewArguments {
  const SignupViewArguments({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignupViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ProductDetailViewArguments {
  const ProductDetailViewArguments({
    required this.course,
    this.key,
  });

  final _i25.CardData course;

  final _i24.Key? key;

  @override
  String toString() {
    return '{"course": "$course", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ProductDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.course == course && other.key == key;
  }

  @override
  int get hashCode {
    return course.hashCode ^ key.hashCode;
  }
}

class AddCreditCardViewArguments {
  const AddCreditCardViewArguments({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant AddCreditCardViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ForgotPasswordViewArguments {
  const ForgotPasswordViewArguments({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ForgotPasswordViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i26.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToIntroView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.introView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signupView,
        arguments: SignupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToYourCourseView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.yourCourseView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductDetailView({
    required _i25.CardData course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productDetailView,
        arguments: ProductDetailViewArguments(course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChooseLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chooseLessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.lessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCourseTestView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.courseTestView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTestQuestionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.testQuestionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.resultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notSavedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNoPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.noPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.savedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentAddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentAddedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCourseNotfoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.courseNotfoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentMethodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentMethodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCheckoutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.checkoutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddCreditCardView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.addCreditCardView,
        arguments: AddCreditCardViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        arguments: ForgotPasswordViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithIntroView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.introView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signupView,
        arguments: SignupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithYourCourseView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.yourCourseView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductDetailView({
    required _i25.CardData course,
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productDetailView,
        arguments: ProductDetailViewArguments(course: course, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChooseLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chooseLessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLessonView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.lessonView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCourseTestView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.courseTestView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTestQuestionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.testQuestionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.resultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notSavedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNoPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.noPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSavedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.savedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentAddedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentAddedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCourseNotfoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.courseNotfoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentMethodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentMethodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCheckoutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.checkoutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddCreditCardView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.addCreditCardView,
        arguments: AddCreditCardViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPasswordView({
    _i24.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.forgotPasswordView,
        arguments: ForgotPasswordViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
