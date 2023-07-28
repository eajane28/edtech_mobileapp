import 'package:edtech_mobile/model/chosen_course_data.dart';
import 'package:flutter/material.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({super.key, required this.card});

  final ChosenCards card;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(card.toImage, width: 78, height: 72),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      card.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3C3A36),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      width: double.infinity,
                      child: const LinearProgressIndicator(
                        color: Colors.blue,
                        value: .6,
                        minHeight: 8,
                        // borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
