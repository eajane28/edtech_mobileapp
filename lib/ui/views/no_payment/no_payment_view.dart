import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'no_payment_viewmodel.dart';

class NoPaymentView extends StackedView<NoPaymentViewModel> {
  const NoPaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NoPaymentViewModel viewModel,
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
                    image: 'assets/Cool Kids Alone.png',
                    title: 'No Payment Method',
                    subtitle: 'You don\'t have any payment method'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 146.0),
                child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child:
                        MyButton(title: 'Continue', onTap: viewModel.proceed)),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  NoPaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NoPaymentViewModel();
}
