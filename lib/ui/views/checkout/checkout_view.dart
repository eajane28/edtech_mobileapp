import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:edtech_mobile/ui/views/widgets/payment_cards.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'checkout_viewmodel.dart';

class CheckoutView extends StackedView<CheckoutViewModel> {
  const CheckoutView({Key? key, required this.selectedCourse, required this.selectedPayment}) : super(key: key);
  final Course selectedCourse;
  final PaymentData selectedPayment;

  @override
  Widget builder(BuildContext context,
      CheckoutViewModel viewModel,
      Widget? child,) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: 'Checkout', onTap: viewModel.back),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                        imageUrl: selectedCourse.image,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                        fadeInDuration: const Duration(milliseconds: 800),
                        width: 169,
                        height: 122),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedCourse.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF3C3A36),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '\$${selectedCourse.price}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF3C3A36),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  selectedCourse.subtitle,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF78746D),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment method',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              PaymentItem(card: selectedPayment),
              Expanded(child: Container()),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: MyWidgetButton(
                      title: viewModel.isBusy
                          ? const MyCircularProgressBar()
                          : Text(
                              'Confirm Payment \$${selectedCourse.price}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                      onTap: viewModel.isBusy ? null : () => viewModel.confirm(selectedCourse)),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  CheckoutViewModel viewModelBuilder(BuildContext context,) =>
      CheckoutViewModel();
}
