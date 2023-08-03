import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/chosen_course_data.dart';
import '../lesson/lesson_viewmodel.dart';

class Header extends ViewModelWidget<LessonViewModel> {
  const Header({super.key, required this.topics, required this.topic});

  final Topics topic;
  final List<Topics> topics;

  @override
  Widget build(BuildContext context, LessonViewModel viewModel) {
    int index = 0;
    int selectedTopicIndex = topics.indexWhere((element) => element.id == topic.id);
    selectedTopicIndex++;

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
            '$selectedTopicIndex of ${topics.length} lessons',
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
                  onTap: () {
                    viewModel.onItemTapped(index);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF8F2EE),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Lessons',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: viewModel.selectedIndex == index ? Colors.orange : const Color(0xFF3C3A36),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () {
                  viewModel.onItemTapped(index + 1);
                },
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                    color: const Color(0xFFF8F2EE),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Tests',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: viewModel.selectedIndex == index + 1 ? Colors.orange :const Color(0xFF3C3A36),
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
                      borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
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
        const SizedBox(height: 24),
      ],
    );
  }
}
