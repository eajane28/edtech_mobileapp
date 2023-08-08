import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_test_viewmodel.dart';

class CourseTestView extends StackedView<CourseTestViewModel> {
  const CourseTestView({Key? key, required this.topic, required this.course, required this.progress}) : super(key: key);
  final CourseTopics topic;
  final Course course;
  final UserProgress progress;

  @override
  Widget builder(
    BuildContext context,
    CourseTestViewModel viewModel,
    Widget? child,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: topic.image!,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
              fadeInDuration: const Duration(milliseconds: 800),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      topic.topic!,
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
              onTap: () => viewModel.begin(course, topic, progress),
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
    );
  }

  @override
  void onViewModelReady(CourseTestViewModel viewModel) async {
    await viewModel.getQuestions(course, topic);
    super.onViewModelReady(viewModel);
  }

  @override
  CourseTestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseTestViewModel();
}
