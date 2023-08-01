import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/ui/views/lesson/lesson_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Header extends ViewModelWidget<LessonViewModel> {
  const Header({super.key, required this.topic, required this.topicIndex, required this.numberOfLessons});

  final CourseTopics topic;
  final int topicIndex;
  final int numberOfLessons;

  @override
  Widget build(BuildContext context, LessonViewModel viewModel) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Text(
          topic.topic,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xFF3C3A36),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '$topicIndex of $numberOfLessons lessons',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF78746D),
            ),
          ),
        ),
        Container(
          height: 42,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => viewModel.animateToPage(0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: viewModel.initialPage == 0 ? Colors.orange : const Color(0xFFF8F2EE),
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Lessons',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3C3A36),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: GestureDetector(
                  onTap: () => viewModel.animateToPage(1),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                    color: viewModel.initialPage == 1 ? Colors.orange : const Color(0xFFF8F2EE),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Tests',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3C3A36),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F2EE),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 22.0),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Discuss',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3C3A36),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
