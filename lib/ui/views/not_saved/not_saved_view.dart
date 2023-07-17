import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'not_saved_viewmodel.dart';

class NotSavedView extends StackedView<NotSavedViewModel> {
  const NotSavedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotSavedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              appBar('Saved', onTap: null),
              container('assets/Cool Kids Alone.png', ' Course not saved',
                  'Try saving the course again in a few minutes'),
              Padding(
                padding: const EdgeInsets.only(bottom: 146.0),
                child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: button('Continue', onTap: null)),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  NotSavedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotSavedViewModel();
}
