import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:edtech_mobile/ui/views/widgets/payment_cards.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_method_viewmodel.dart';

class PaymentMethodView extends StackedView<PaymentMethodViewModel> {
  const PaymentMethodView({Key? key, this.cards, required this.selectedCourse}) : super(key: key);
  final List<PaymentData>? cards;
  final Course selectedCourse;

  @override
  Widget builder(
    BuildContext context,
    PaymentMethodViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Payment',
          onTap: viewModel.back,
        ),
        body: Container(
          height: screenHeight(context),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
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
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: viewModel.isBusy
                    ? const MyCircularProgressBar(
                        indicatorColor: Colors.orange,
                      )
                    : Column(
                        children: [
                          for (var card in viewModel.paymentMethods!)
                            PaymentItem(
                              card: card,
                              index: viewModel.paymentMethods!.indexOf(card),
                              groupValue: viewModel.groupValue,
                              onPressed: viewModel.selectedCard,
                            ),
                          GestureDetector(
                            onTap: () {
                              viewModel.addNewCreditCard(selectedCourse);
                            },
                            child: Card(
                                margin: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, size: 40.0, color: Colors.grey[600]),
                                      const SizedBox(width: 16),
                                      const Expanded(
                                        child: Text(
                                          'Add new card',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF3C3A36),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),),
                              ),
                            )
                  ],
                ),
              ),
              const SizedBox(height: 361),
              Expanded(child: Container()),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: MyButton(title: 'Continue', onTap: () => viewModel.proceed(selectedCourse))),
              )
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
      PaymentMethodViewModel(paymentMethods: cards);

  @override
  void onViewModelReady(PaymentMethodViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
