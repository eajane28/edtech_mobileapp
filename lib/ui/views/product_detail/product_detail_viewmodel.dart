// import 'dart:js';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:edtech_mobile/services/local_storage.dart';
import 'package:edtech_mobile/ui/common/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ProductDetailViewModel extends BaseViewModel {
  ProductDetailViewModel({required this.course});

  final _navigationService = locator<NavigationService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  final Course course;
  final _localStorage = locator<LocalStorage>();
  List<PaymentData> paymentMethods = [];
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");
  late User user;

  init() async {
    setBusy(true);
    await getUser();
    setBusy(false);
    setBusyForObject('video', true);
    if (course.video != null) {
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(course.video!)!,
        flags: const YoutubePlayerFlags(
          controlsVisibleAtStart: false,
          autoPlay: false,
          mute: false,
        ),
      );
    }
    setBusyForObject('video', false);
  }

  Future<void> getUser() async {
    final response = await _localStorage.getCurrentUser();
    response.fold(
        (l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration), (r) => user = r!);
  }

  void addToCart(course) {
    _navigationService.navigateToNoPaymentView(course: course);
  }

  void purchaseCourse(course) async {
    setBusyForObject("purchase", true);
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods = r);
    paymentMethods.isEmpty
        ? _navigationService.navigateToNoPaymentView(course: course)
        : _navigationService.navigateToPaymentMethodView(cards: paymentMethods, selectedCourse: course);
    setBusyForObject("purchase", true);
  }

  void backToHomeView() {
    _navigationService.back();
  }
}
