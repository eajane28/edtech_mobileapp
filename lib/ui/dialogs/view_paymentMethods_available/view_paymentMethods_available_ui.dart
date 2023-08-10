import 'package:edtech_mobile/ui/common/input_validation_mixin.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/dialogs/update_name_dialog/update_name_dialog_view_model.dart';
// import 'package:edtech_mobile/ui/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

const double _graphicSize = 60;

class UpdateNameDialogUi extends StackedView<UpdateNameDialogModel> with InputValidationMixin {
  UpdateNameDialogUi({
    super.key,
    required this.request,
    required this.completer,
  });

  final DialogRequest request;
  final Function(DialogResponse) completer;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(BuildContext context, UpdateNameDialogModel viewModel, Widget? child) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SizedBox(
            width: 300,
            height: 400,
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.title!,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                          ),
                          verticalSpaceTiny
                        ],
                      ),
                      Container(
                        width: _graphicSize,
                        height: _graphicSize,
                        decoration: const BoxDecoration(
                          color: Color(0xffF6E7B0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(_graphicSize / 2),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '💳',
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  verticalSpaceSmall,
                  SingleChildScrollView(
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        viewModel.updateName();
                      } else {
                        viewModel.snackbarService
                            .showSnackbar(message: "Make sure your passwords matched nor neither of the page is empty.");
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: viewModel.isBusy
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Change',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  UpdateNameDialogModel viewModelBuilder(BuildContext context) {
    return UpdateNameDialogModel();
  }

  @override
  bool get disposeViewModel => false;
}
