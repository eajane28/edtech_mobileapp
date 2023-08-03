import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/ui/views/widgets/back_button.dart';
import 'package:edtech_mobile/ui/views/widgets/card_courses.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyBackButton(onTap: viewModel.backToHomeView),
                      const SizedBox(width: 8),
                      Expanded(
                          child: SearchBox(
                              controller: viewModel.searchController)),
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: viewModel.searchList.isNotEmpty,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '${viewModel.searchList.length} Results',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            viewModel.isBusy
                ? const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    ),
                  )
                : viewModel.searchList.isEmpty
                    ? const Expanded(
                        child: Center(
                          child: Display(
                              image: 'assets/Cool Kids Standing.png',
                              title: ' Course not found',
                              subtitle:
                                  'Try searching the course with a different keyword'),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: viewModel.searchList.length,
                          itemBuilder: (context, index) {
                            var cardItem = viewModel.searchList[index];
                            return CourseCard(
                                card: cardItem,
                                onTap: (Course course) {
                                  viewModel.onTap(course);
                                });
                          },
                        ),
                      ),
          ],
        ),
      )),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();

  @override
  void onViewModelReady(SearchViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
