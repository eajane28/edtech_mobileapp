import 'package:edtech_mobile/services/local_storage.dart';
import 'package:stacked/stacked.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _localStorage = locator<LocalStorage>();

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      final res = await _localStorage.getCurrentUser();
      res.fold((l) => _navigationService.replaceWithIntroView(),
          (r) => _navigationService.replaceWithHomeView());
    });
  }
}
