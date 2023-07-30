import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
// import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/payment_cards.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import 'payment_method_viewmodel.dart';

class PaymentMethodView extends StackedView<PaymentMethodViewModel> {
  const PaymentMethodView({
    Key? key,
    this.cards,
    required this.course,
  }) : super(key: key);
  final List<PaymentData>? cards;
  final CardData course;
  //declare item for courses from the previous page

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
        body: Padding(
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
              const SizedBox(height: 78),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: viewModel.isBusy
                      ? const Center(
                          child: CircularProgressIndicator(
                          color: Colors.orange,
                        ))
                      : Column(
                          children: [
                            for (var card in viewModel.paymentMethods!) PaymentItem(card: card, onTap: (PaymentData card) => viewModel.proceedToCheckout(card, course)),
                            GestureDetector(
                              onTap: viewModel.addNewCreditCard,
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
                        )),
              // const Expanded(child: SizedBox(height: 361)),
              // Container(
              //     margin: const EdgeInsets.all(16.0), child: MyButton(title: 'Continue', onTap: viewModel.proceed))
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
