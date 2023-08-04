import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/courses.dart';
import '../../../model/lesson_topics.dart';
import 'course_test_viewmodel.dart';

class CourseTestView extends StackedView<CourseTestViewModel> {
  const CourseTestView(this.topic, this.course, {Key? key}) : super(key: key);

  final Topics topic;
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    CourseTestViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl: topic.image,
                      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                      fadeInDuration: const Duration(milliseconds: 800),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Quiz',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFE3562A),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              topic.topic,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3C3A36),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Let\'s put your memory on this topic test. Solve tasks and check your knowledge.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF78746D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.begin(course, topic);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: const Color(0xFFE3562A)),
                            borderRadius: BorderRadius.circular(16)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                          child: Text('Begin',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF3C3A36),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  CourseTestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseTestViewModel();
}
