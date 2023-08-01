import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:stacked_services/stacked_services.dart';

const double _graphicSize = 60;

class MyConfirmationDialog extends StatelessWidget {
  const MyConfirmationDialog(
      {super.key, required this.request, required this.completer});

  final DialogRequest request;
  final Function(DialogResponse) completer;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Container(
        height: _graphicSize * 3.2,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      request.title!,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    verticalSpaceTiny
                  ],
                ),
                Container(
                    width: _graphicSize * 0.8,
                    height: _graphicSize * 0.8,
                    decoration: const BoxDecoration(
                      color: Color(0xffF6E7B0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(_graphicSize / 2),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      FontAwesome.question,
                      color: Colors.orange,
                      size: 40,
                    ))
              ],
            ),
            const Expanded(child: verticalSpaceSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: _graphicSize * 2,
                  height: _graphicSize,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16)),
                  child: MyWidgetButton(
                    onTap: () => completer(DialogResponse(confirmed: false)),
                    title: const Center(
                        child: Text(
                      'Cancel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                    color: Colors.white,
                  ),
                ),
                horizontalSpaceMedium,
                Container(
                  width: _graphicSize * 2,
                  height: _graphicSize,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16)),
                  child: MyWidgetButton(
                      onTap: () => completer(DialogResponse(confirmed: true)),
                      title: const Center(
                          child: Text(
                        'Proceed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      )),
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
