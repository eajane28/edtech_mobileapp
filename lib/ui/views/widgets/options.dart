import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Options extends StatefulWidget {
  const Options({super.key, required this.choice, required this.index, required this.onTap, required this.isPressed});

  final String choice;
  final int index;
  final Function(int) onTap;
  final bool isPressed;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isSelected == false && widget.isPressed == false ? () {          
          widget.onTap(widget.index);
          setState(() {
            isSelected = true;
          });
      }:  null ,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: isSelected ==false && widget.isPressed == false? const Color(0xFFBEBAB3) : isSelected == true ? Colors.orange : const Color(0xFFBEBAB3)), borderRadius: BorderRadius.circular(8), ),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Expanded(
              child: Text(
                widget.choice,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF3C3A36)),
              ),
            )),
      ),
    );
  }
}
