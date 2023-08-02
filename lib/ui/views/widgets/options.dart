import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Options extends StatelessWidget {
  const Options({super.key, required this.choice, this.correct});

  final String choice;
  final bool? correct;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
          border: Border.all(
              color: correct == null
                  ? const Color(0xFFBEBAB3)
                  : correct!
                      ? Colors.green
                      : Colors.red),
          borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                choice,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF3C3A36)),
              ),
            ),
          ),
          correct == null
              ? Container()
              : correct!
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : const Icon(MaterialCommunityIcons.close_circle, color: Colors.red)
        ],
      ),
    );
  }
}