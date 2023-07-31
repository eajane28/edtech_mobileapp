import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/add_credit_card/card_utils.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import '../../../model/card_data.dart';
import 'add_credit_card_viewmodel.dart';

class AddCreditCardView extends StackedView<AddCreditCardViewModel> with InputValidationMixin {
  AddCreditCardView(this.course, {Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final CardData course;

  @override
  Widget builder(
    BuildContext context,
    AddCreditCardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  MyAppBar(title: 'Payment', onTap: viewModel.back),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Add credit card',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: MyTextField(
                      hintText: 'Name',
                      controller: viewModel.nameController,
                      validator: (value) => notEmpty(value ?? '') ? null : 'Field Can\'t Be Empty',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => viewModel.onEditComplete(viewModel.cardNumberFocusNode, context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: MyTextField(
                      hintText: 'Credit card number',
                      focusNode: viewModel.cardNumberFocusNode,
                      controller: viewModel.cardNumberController,
                      suffix: CardUtils.getCardIcon(viewModel.paymentData == null
                          ? CardType.others
                          : CardType.values.firstWhere(
                              (element) => element.name == viewModel.paymentData!.paymentMethod)),
                      validator: validateCardNum,
                      keyboardType: TextInputType.number,
                      formatters: [CreditCartInputFormatter(), LengthLimitingTextInputFormatter(19)],
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => viewModel.onEditComplete(viewModel.expiryFocusNode, context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Expires',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                                width: 155.5,
                                child: MyTextField(
                                  hintText: 'MM/YY',
                                  focusNode: viewModel.expiryFocusNode,
                                  controller: viewModel.expiryDateController,
                                  validator: cardExpiryValid,
                                  keyboardType: TextInputType.datetime,
                                  onChanged: (String value) {
                                    if (viewModel.expiryDateController.text.startsWith(RegExp('[2-9]'))) {
                                      viewModel.expiryDateController.text = '0${viewModel.expiryDateController.text}';
                                      viewModel.expiryDateController.selection =
                                          TextSelection.collapsed(offset: viewModel.expiryDateController.text.length);
                                    }
                                  },
                                  formatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    // FilteringTextInputFormatter.digitsOnly
                                    CreditCartInputFormatter(isMonth: true)
                                  ],
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete: () => viewModel.onEditComplete(viewModel.cvvFocusNode, context),
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'CVV',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                                width: 155.5,
                                child: MyTextField(
                                  hintText: '***',
                                  focusNode: viewModel.cvvFocusNode,
                                  isObscure: true,
                                  controller: viewModel.cvvController,
                                  validator: cvvValid,
                                  keyboardType: TextInputType.number,
                                  formatters: [
                                    LengthLimitingTextInputFormatter(3),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  textInputAction: TextInputAction.done,
                                  onEditingComplete: () => FocusScope.of(context).unfocus(),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                        margin: const EdgeInsets.all(16.0),
                        child: MyWidgetButton(
                            title: viewModel.isBusy ? const MyCircularProgressBar() : const Text(
                              'Save',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            onTap: () {
                    if (_formKey.currentState!.validate()) {
                    viewModel.save(course);
                    }
                    })),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  AddCreditCardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddCreditCardViewModel();

  @override
  void onViewModelReady(AddCreditCardViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(AddCreditCardViewModel viewModel) {
    viewModel.cardNumberController.removeListener(viewModel.getCardTypeFrmNumber);
    super.onDispose(viewModel);
  }
}
