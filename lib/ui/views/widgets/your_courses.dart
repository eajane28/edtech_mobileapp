import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:flutter/material.dart';

Widget card(Course cardData) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFFFE0B2),
          ),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: cardData.image,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                fadeInDuration: const Duration(milliseconds: 800),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      label: Text(
                        '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFF2F2F2),
                        ),
                      ),
                      backgroundColor: Color(0xFFFFE0B2),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  cardData.duration,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5BA092),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  cardData.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  cardData.subtitle,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
