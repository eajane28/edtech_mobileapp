import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              appBar('Results', onTap: null),
              container('assets/Cool Kids Xmas Morning.png', 'Congratulations',
                  'Congratulations for getting all the answers correct!'),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var icon in viewModel.iconList) buildIcon(icon),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel();
}
