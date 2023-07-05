import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset('assets/Cool Kids On Wheels.png', width: 375, height: 264,)),

        const Text(
          'CodeFactory',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF3B3936),
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ));
  }
}
