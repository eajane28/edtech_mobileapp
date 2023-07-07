import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtech_mobile/ui/views/widgets/intro_item_view.dart';

import 'intro_viewmodel.dart';
import '../widgets/intro_footer.dart';

class IntroView extends StackedView<IntroViewModel> {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    IntroViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: viewModel.skip,
              child: const Text(
                'Skip',
                style: TextStyle(color: Color(0xFF78746D)),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: viewModel.pageController,
                onPageChanged: viewModel.onPageChanged,
                children: viewModel.introList
                    .map((e) => IntroItemView(introData: e))
                    .toList()),
          ),
          IntroFooter(
            itemSize: viewModel.introList.length,
            selectedPosition: viewModel.selectedPosition,
          )
        ],
      ),
    );
  }

  @override
  IntroViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      IntroViewModel();
}
