import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Options extends StatefulWidget {
  Options({super.key, required this.choices, required this.index, required this.onTap});

  final Questions choices;
  final int index;
  void Function()? onTap;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onTap!();
        });
      },
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: isSelected? Colors.orange:const Color(0xFFBEBAB3)), borderRadius: BorderRadius.circular(8), ),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                Text(
                  widget.choices.choices[widget.index],
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF3C3A36)),
                ),
              ],
            )),
      ),
    );
  }
}
