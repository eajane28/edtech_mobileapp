import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/choosen_courses_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'choose_lesson_viewmodel.dart';

class ChooseLessonView extends StackedView<ChooseLessonViewModel> {
  const ChooseLessonView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChooseLessonViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            MyAppBar(title: 'HTML', onTap: null),
            // appBar('HTML', onTap: null),
            Card(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF5EE),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/Cool Kids Long Distance Relationship.png'),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              iconSize: 50,
                              color: Colors.blue[300],
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.play_circle_outline_sharp)),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'HTML',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF3C3A36),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Advanced web applications',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF78746D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            for (var card in viewModel.lessonList) LessonItem(card: card),
          ],
        ),
      ),
    );
  }

  @override
  ChooseLessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChooseLessonViewModel();
}
