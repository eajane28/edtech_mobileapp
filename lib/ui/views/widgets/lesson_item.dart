import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'lesson_item_view_model.dart';

class LessonItem extends StackedView<LessonItemViewModel> {
  const LessonItem({super.key, required this.topic, required this.course});

  final CourseTopics topic;
  final Course course;

  @override
  Widget builder(BuildContext context, LessonItemViewModel viewModel, Widget? child) {
    return GestureDetector(
      onTap: viewModel.navigateToTopic,
      child: Card(
          // margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CachedNetworkImage(
                imageUrl: topic.image,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 800),
                width: 78,
                height: 72),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topic.topic,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C3A36),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  viewModel.isBusy
                      ? Container()
                      : Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                          width: double.infinity,
                          child: LinearProgressIndicator(
                            color: Colors.blue,
                            value: viewModel.progress.answered == 0
                                ? 0
                                : viewModel.progress.answered / viewModel.questions.length,
                            minHeight: 8,
                            // borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  void onViewModelReady(LessonItemViewModel viewModel) {
    viewModel.init(course, topic);
    super.onViewModelReady(viewModel);
  }

  @override
  LessonItemViewModel viewModelBuilder(BuildContext context) => LessonItemViewModel();
}
