import 'package:flutter/material.dart';

import '../../../model/chosen_course_data.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.topic});

  final Topics topic;

  @override
  Widget build(BuildContext context) {
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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '3 of 11 lessons',
            style: TextStyle(
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
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F2EE),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
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
              const SizedBox(width: 4),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                  color: const Color(0xFFF8F2EE),
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
