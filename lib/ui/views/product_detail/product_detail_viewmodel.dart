import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/app/app.router.dart';
import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/repository/payment_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../model/user.dart';
import '../../../services/local_storage.dart';
import '../../common/constants.dart';

// import '../../../model/card_data.dart';

class ProductDetailViewModel extends BaseViewModel {
  ProductDetailViewModel({required this.course});

  final _navigationService = locator<NavigationService>();
  final _paymentRepository = locator<PaymentRepository>();
  final _snackBarService = locator<SnackbarService>();
  final _localStorage = locator<LocalStorage>();
  final Course course;
  List<PaymentData> paymentMethods = [];
  late User user;
  late YoutubePlayerController youtubePlayerController = YoutubePlayerController(initialVideoId: "");

  void init() async {
    setBusy(true);
    final response = await _paymentRepository.getPaymentMethods();
    response.fold((l) => _snackBarService.showSnackbar(message: l.message), (r) => paymentMethods = r);
    setBusy(false);
    // setBusyForObject('video', true);
    // if (course.video != null) {
    //   youtubePlayerController = YoutubePlayerController(
    //     initialVideoId: YoutubePlayer.convertUrlToId(course.video!)!,
    //     flags: const YoutubePlayerFlags(
    //       controlsVisibleAtStart: false,
    //       autoPlay: false,
    //       mute: false,
    //     ),
    //   );
    // }
    // setBusyForObject('video', false);
  }

  Future<void> getUser() async {
    final response = await _localStorage.getCurrentUser();
    response.fold(
        (l) => _snackBarService.showSnackbar(message: l.message, duration: AppConstants.defDuration), (r) => user = r!);
  }

  void addToCart(course) {
    _navigationService.navigateToNoPaymentView(course: course);
  }

  void purchaseCourse(context, course) async {
    setBusyForObject("purchase", true);
    paymentMethods.isEmpty
        ? _navigationService.navigateToNoPaymentView(course: course)
        : _navigationService.navigateToPaymentMethodView(cards: paymentMethods, selectedCourse: course);
    setBusyForObject("purchase", false);
  }

  void backToHomeView() {
    _navigationService.back();
  }

  void purchasedCourse(Course course) {
    _navigationService.navigateToChooseLessonView(course: course);
  }
}
