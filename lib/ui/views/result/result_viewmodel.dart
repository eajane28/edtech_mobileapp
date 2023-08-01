import 'package:edtech_mobile/model/icons_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ResultViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final iconList = [
    const IconsData(iconsPage: 'assets/Social Networks Icons.png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (1).png'),
    const IconsData(iconsPage: 'assets/Social Networks Icons (2).png'),
  ];

  void back() {
    _navigationService.back();
  }
}
