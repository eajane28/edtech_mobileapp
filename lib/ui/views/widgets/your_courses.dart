import 'package:flutter/material.dart';

Widget card(cardData) {
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
              Image.asset(cardData.cardImage),
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
                  cardData.description,
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
