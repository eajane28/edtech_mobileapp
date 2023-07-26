import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/courses_data.dart';
import 'package:edtech_mobile/services/auth_service.dart';
import 'package:edtech_mobile/services/repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:stacked_services/stacked_services.dart';

class CoursesViewModel extends BaseViewModel {
  final AuthService authService = locator<AuthService>();
  final Repository _repository = locator<Repository>();
  final NavigationService _navigation = locator<NavigationService>();
  // final SnackbarService _snackbarService = locator<SnackbarService>();
  List<CardData> cardList = [];
  CardData? cardData;
  int courseItemSelected = 0;

 init() async {
    setBusy(true);
    await _repository.getCourses().then((value) {
      if(value.isNotEmpty){
        cardList = value;
      }
    });
    print(cardList);
    // cardData = cardList[];
    setBusy(false);
  }

  final coursesList = [
    CoursesData(name: '#CSS'),
    CoursesData(name: '#UX'),
    CoursesData(name: '#Swift'),
    CoursesData(name: '#UI')
  ];

   onTap(CardData courseItem){
    // courseItemSelected = courseItem;
    // print(courseItemSelected);
    _navigation.navigateToProductDetailView(course: courseItem);
  }
}
