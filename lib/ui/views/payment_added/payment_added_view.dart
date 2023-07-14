import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_added_viewmodel.dart';

class PaymentAddedView extends StackedView<PaymentAddedViewModel> {
  const PaymentAddedView({Key? key}) : super(key: key);

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
              appBar('Payment', onTap: null),
              Expanded(
                child: container('assets/Cool Kids Sitting.png', 'Payment Method added',
                    'You can buy the course now. Continue to payment.'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 146.0),
                child: button('Continue', onTap: viewModel.next),
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
