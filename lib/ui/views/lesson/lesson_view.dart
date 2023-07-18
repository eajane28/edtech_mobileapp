import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/courses_header.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'lesson_viewmodel.dart';

class LessonView extends StackedView<LessonViewModel> {
  const LessonView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LessonViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
               MyAppBar(title: 'HTML', onTap: null),
              const Header(),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF5BA092),
                ),
                child: Column(
                  children: [
                    Image.asset(
                        'assets/Cool Kids Long Distance Relationship.png'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.play_circle_outline, size: 50)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Introduction',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF3C3A36),
                          ),
                        ),
                      ),
                      Text(
                        'You can launch a new career in web development today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we\'re ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF78746D),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  LessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LessonViewModel();
}
