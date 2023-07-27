import 'package:flutter/material.dart';

class MyCircularProgressBar extends StatelessWidget {
  const MyCircularProgressBar({super.key, this.indicatorColor = Colors.white});

  final Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: indicatorColor,
      ),
    );
  }
}
