import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/payment_cards.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_method_viewmodel.dart';

class PaymentMethodView extends StackedView<PaymentMethodViewModel> {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentMethodViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: 'Payment', onTap: viewModel.back),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Choose your payment method',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const SizedBox(height: 78),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Column(
                  children: [
                    for (var card in viewModel.paymentList)
                      PaymentItem(card: card),
                  ],
                ),
              ),
              const SizedBox(height: 361),
              Container(
                  margin: const EdgeInsets.all(16.0),
                  child: MyButton(title: 'Continue', onTap: viewModel.proceed))
            ],
          ),
        ),
      ),
    );
  }

  @override
  PaymentMethodViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentMethodViewModel();
}
