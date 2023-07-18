import 'package:edtech_mobile/model/icons_data.dart';
import 'package:flutter/material.dart';

class BuildIcon extends StatelessWidget {
  const BuildIcon({super.key, required this.iconsData});

  final IconsData iconsData;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF65AAEA),
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(iconsData.iconsPage),
          ),
        ],
      ),
    ),
  );
  }
}
