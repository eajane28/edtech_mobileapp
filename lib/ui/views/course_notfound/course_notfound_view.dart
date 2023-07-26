import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/display.dart';
import 'package:edtech_mobile/ui/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_notfound_viewmodel.dart';

class CourseNotfoundView extends StackedView<CourseNotfoundViewModel> {
  const CourseNotfoundView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CourseNotfoundViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              MyAppBar(title: '', onTap: null),
              // appBar('', onTap: null),
              const SizedBox(
                height: 16,
              ),
              SearchBox(
                controller: viewModel.searchController,
              ),
              const SizedBox(
                height: 16,
              ),
              const Display(
                  image: 'assets/Cool Kids Standing.png',
                  title: ' Course not found',
                  subtitle: 'Try searching the course with a different keyword'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CourseNotfoundViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseNotfoundViewModel();
}
