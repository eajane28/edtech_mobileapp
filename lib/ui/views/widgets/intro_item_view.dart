import 'package:edtech_mobile/model/intro_data.dart';
import 'package:flutter/material.dart';

class IntroItemView extends StatelessWidget {
  const IntroItemView({super.key, required this.introData});

  final IntroData introData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.center,
            child: Image.asset(
              introData.imagePage,
            )),
        SizedBox(
          width: 341,
          height: 72,
          child: Row(
            children: <Widget>[
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  introData.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF3B3936),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 25.0, left: 25.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
            child: Text(
              introData.message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF78746D),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
