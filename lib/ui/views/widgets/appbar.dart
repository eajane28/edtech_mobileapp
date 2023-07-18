import 'package:edtech_mobile/ui/views/widgets/back_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  void Function()? onTap;
  MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
           MyBackButton(onTap: onTap),
          // GestureDetector(
          //   onTap: onTap,
          //   child: Container(
          //     width: 48,
          //     height: 48,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       border: Border.all(color: const Color(0xFFBEBAB3)),
          //     ),
          //     child: const Center(
          //       child: Icon(Icons.chevron_left),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(width: 48)
        ],
      ),
    );
  }
}
