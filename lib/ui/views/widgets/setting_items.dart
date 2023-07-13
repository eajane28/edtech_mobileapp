import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget settingsInfo(settingsData) {
  return Container(
    height: 100,
    margin: const EdgeInsets.symmetric(vertical: 8),
    padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xFFBEBAB3)),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 32,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Color(0xFF65AAEA), shape: BoxShape.circle),
            child: SvgPicture.asset(settingsData.iconPath, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0),
            child: SizedBox(
              height: 82,
              width: 235,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    settingsData.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    settingsData.text,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF78746D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_right)))
      ],
    ),
  );
}
