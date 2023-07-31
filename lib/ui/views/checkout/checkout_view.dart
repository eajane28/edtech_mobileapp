import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import '../../../model/payment_data.dart';
import '../../common/png_constants.dart';
import '../../common/ui_helpers.dart';
import 'checkout_viewmodel.dart';

class CheckoutView extends StackedView<CheckoutViewModel> {
  const CheckoutView(this.card, this.course, {Key? key}) : super(key: key);
  final PaymentData card;
  final CardData course;

  @override
  Widget builder(
    BuildContext context,
    CheckoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: 'Checkout', onTap: viewModel.back),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 122,
                      width: 169,
                      child: CachedNetworkImage(
                        imageUrl: course.image,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                        fadeInDuration: const Duration(milliseconds: 800),
                      ),
                    ),
                    // Image.asset('assets/Illustration.png',
                    //     width: 169, height: 122),
                    const SizedBox(width: 8.0),
                    SizedBox(
                      width: 200,
                      height: 169,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Text(
                              course.title,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3C3A36),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Flexible(
                            child: Text(
                              '\$${course.price}',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3C3A36),
                              ),
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
                  course.subtitle,
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
              Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      card.paymentMethod == 'other'
                          ? Icon(
                              Icons.credit_card,
                              size: 40.0,
                              color: Colors.grey[600],
                            )
                          : Image.asset('${CardTypeImage.rootPath}${card.paymentMethod}.png', width: 78, height: 72),
                      horizontalSpaceMedium,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatCreditCardNumber(card.cardNumber),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3C3A36),
                              ),
                            ),
                            verticalSpaceMedium,
                            Text(
                              "Expires ${card.expiryDate}",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF78746D),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: MyButton(title: 'Confirm Payment \$50.00', onTap: () {viewModel.confirmToYourCourses(course);}),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  CheckoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CheckoutViewModel();
}
