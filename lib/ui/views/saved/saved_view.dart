import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
// import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'saved_viewmodel.dart';

class SavedView extends StackedView<SavedViewModel> {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SavedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
               MyAppBar(title: 'Payment', onTap: null),
              // appBar('Payment', onTap: null),
              const Display(image: 'assets/Cool Kids On Bike.png', title: 'Course was saved',
                  subtitle: 'You can find this course in your profile'),
              Padding(
                padding: const EdgeInsets.only(bottom: 146.0),
                child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: MyButton(title: 'Continue', onTap: (){})),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  SavedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SavedViewModel();
}
