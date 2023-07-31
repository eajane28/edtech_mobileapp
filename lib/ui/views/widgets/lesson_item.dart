import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:flutter/material.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({super.key, required this.topic});

  final CourseTopics topic;

  @override
  Widget build(BuildContext context) {
    return Card(
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
