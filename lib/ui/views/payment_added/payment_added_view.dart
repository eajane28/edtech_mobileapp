import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import 'payment_added_viewmodel.dart';

class PaymentAddedView extends StackedView<PaymentAddedViewModel> {
  const PaymentAddedView(this.course, {Key? key}) : super(key: key);
  final CardData course;

  @override
  Widget builder(
    BuildContext context,
    PaymentAddedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: 'Payment', onTap: viewModel.back),
              const Expanded(
                child: Display(
                    image: 'assets/Cool Kids Sitting.png',
                    title: 'Payment Method added',
                    subtitle:
                        'You can buy the course now. Continue to payment.'),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(bottom: 146.0),
                child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: MyButton(title: 'Continue', onTap: () {viewModel.continueToPaymentMethod(course);})),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  PaymentAddedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentAddedViewModel();
}
