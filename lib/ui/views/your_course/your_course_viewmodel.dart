import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/services/local_storage.dart';
// import 'package:edtech_mobile/model/card_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class YourCourseViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _localStorage = locator<LocalStorage>();
  List<String> purchasedCoursesIds =[];
  List<Course> purchasedCourses = [];

  final yourCourseList = [
    // CardData(
    //     cardImage: 'assets/Cool Kids Alone.png',
    //     price: '',
    //     duration: 'Left 1 h 20 min ',
    //     title: 'Swift ',
    //     description: 'Advanced iOS apps'),
    // CardData(
    //     cardImage: 'assets/Cool Kids Performing.png',
    //     price: '',
    //     duration: 'Left 1 h 20 min ',
    //     title: 'Scrum',
    //     description: 'Advanced project organization course'),
  ];

  void init() async{
    final user = await _localStorage.getCurrentUser();
    user.fold((l) => null, (r) => purchasedCoursesIds = r!.purchaseCourses);
  }

  void back() {
    _navigationService.navigateToHomeView();
  }
}
