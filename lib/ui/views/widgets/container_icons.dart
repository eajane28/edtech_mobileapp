import 'package:edtech_mobile/model/icons_data.dart';
import 'package:flutter/material.dart';

typedef OnPressed = void Function();

class BuildIcon extends StatelessWidget {
  BuildIcon({super.key, required this.iconsData, this.action});

  final IconsData iconsData;
  final OnPressed? action;
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
        child: InkWell(
          onTap: action,
          child: AbsorbPointer(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Image.asset(iconsData.iconsPage),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
