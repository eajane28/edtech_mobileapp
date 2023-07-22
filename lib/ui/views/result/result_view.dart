import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/container_icons.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
// import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
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
              MyAppBar(title: 'Results', onTap: null),
              const Expanded(
                child: Display(
                    image: 'assets/Cool Kids Xmas Morning.png',
                    title: 'Congratulations',
                    subtitle:
                        'Congratulations for getting all the answers correct!'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var icon in viewModel.iconList)
                      BuildIcon(iconsData: icon),
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
