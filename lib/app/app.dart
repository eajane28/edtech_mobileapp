import 'package:edtech_mobile/services/auth_service_impl.dart';
import 'package:edtech_mobile/services/local_storage_impl.dart';
import 'package:edtech_mobile/services/repository.dart';
import 'package:edtech_mobile/services/repository_impl.dart';
import 'package:edtech_mobile/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:edtech_mobile/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:edtech_mobile/ui/dialogs/update_password_dialog/update_password_dialog_ui.dart';
import 'package:edtech_mobile/ui/views/home/home_view.dart';
import 'package:edtech_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtech_mobile/ui/views/intro/intro_view.dart';
import 'package:edtech_mobile/ui/views/login/login_view.dart';
import 'package:edtech_mobile/ui/views/signup/signup_view.dart';
// import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
// import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
// import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
import 'package:edtech_mobile/ui/views/search/search_view.dart';
import 'package:edtech_mobile/ui/views/product_detail/product_detail_view.dart';
import 'package:edtech_mobile/ui/views/choose_lesson/choose_lesson_view.dart';
import 'package:edtech_mobile/ui/views/lesson/lesson_view.dart';
import 'package:edtech_mobile/ui/views/course_test/course_test_view.dart';
import 'package:edtech_mobile/ui/views/test_question/test_question_view.dart';
import 'package:edtech_mobile/ui/views/result/result_view.dart';
import 'package:edtech_mobile/ui/views/not_saved/not_saved_view.dart';
import 'package:edtech_mobile/ui/views/no_payment/no_payment_view.dart';
import 'package:edtech_mobile/ui/views/saved/saved_view.dart';
import 'package:edtech_mobile/ui/views/payment_added/payment_added_view.dart';
import 'package:edtech_mobile/ui/views/course_notfound/course_notfound_view.dart';
import 'package:edtech_mobile/ui/views/payment_method/payment_method_view.dart';
import 'package:edtech_mobile/ui/views/checkout/checkout_view.dart';
import 'package:edtech_mobile/ui/views/add_credit_card/add_credit_card_view.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/views/forgot_password/forgot_password_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    // MaterialRoute(page: SettingsView),
    // MaterialRoute(page: ProfileView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: IntroView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: YourCourseView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: ProductDetailView),
    MaterialRoute(page: ChooseLessonView),
    MaterialRoute(page: LessonView),
    MaterialRoute(page: CourseTestView),
    MaterialRoute(page: TestQuestionView),
    MaterialRoute(page: ResultView),
    MaterialRoute(page: NotSavedView),
    MaterialRoute(page: NoPaymentView),
    MaterialRoute(page: SavedView),
    MaterialRoute(page: PaymentAddedView),
    MaterialRoute(page: CourseNotfoundView),
    MaterialRoute(page: PaymentMethodView),
    MaterialRoute(page: CheckoutView),
    MaterialRoute(page: AddCreditCardView),
    MaterialRoute(page: ForgotPasswordView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthServiceImpl, asType: AuthService),
    LazySingleton(classType: LocalStorageImpl, asType: LocalStorage),
    LazySingleton(classType: RepositoryImpl, asType: Repository),
    LazySingleton(classType: SnackbarService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: UpdatePasswordDialogUi),
    // @stacked-dialog
  ],
)
class App {}
