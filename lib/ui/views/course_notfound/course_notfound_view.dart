import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/search__widget.dart';
import 'package:edtech_mobile/ui/views/widgets/single_container.dart';
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
              appBar('', onTap: null),
              const SizedBox(
                height: 16,
              ),
              searchBox(),
              const SizedBox(
                height: 16,
              ),
              container('assets/Cool Kids Standing.png', ' Course not found',
                  'Try searching the course with a different keyword'),
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
