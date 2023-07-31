// import 'dart:js';

import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// import '../../../model/card_data.dart';

class ProductDetailViewModel extends BaseViewModel {
  ProductDetailViewModel({required this.course});

  final _navigationService = locator<NavigationService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  final Course course;
  List<PaymentData> paymentMethods = [];
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");

  void init() {
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

  void addToCart(course) {
    _navigationService.navigateToNoPaymentView(course: course);
  }

  void purchaseCourse(course) async {
    setBusy(true);
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods = r);
    paymentMethods.isEmpty
        ? _navigationService.navigateToNoPaymentView(course: course)
        : _navigationService.navigateToPaymentMethodView(cards: paymentMethods, selectedCourse: course);

    setBusy(false);
  }

  void backToHomeView() {
    _navigationService.back();
  }
}
