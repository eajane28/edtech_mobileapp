import 'package:edtech_mobile/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:edtech_mobile/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:edtech_mobile/ui/views/home/home_view.dart';
import 'package:edtech_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtech_mobile/ui/views/intro/intro_view.dart';
import 'package:edtech_mobile/ui/views/login/login_view.dart';
import 'package:edtech_mobile/ui/views/signup/signup_view.dart';
import 'package:edtech_mobile/ui/views/profile/profile_view.dart';
import 'package:edtech_mobile/ui/views/settings/settings_view.dart';
import 'package:edtech_mobile/ui/views/courses/courses_view.dart';
import 'package:edtech_mobile/ui/views/your_course/your_course_view.dart';
import 'package:edtech_mobile/ui/views/search/search_view.dart';
import 'package:edtech_mobile/ui/views/product_detail/product_detail_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: IntroView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: CoursesView),
    MaterialRoute(page: YourCourseView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: ProductDetailView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
