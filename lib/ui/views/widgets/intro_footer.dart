// import 'package:edtech_mobile/model/intro_data.dart';
import 'package:edtech_mobile/ui/views/intro/intro_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class IntroFooter extends ViewModelWidget<IntroViewModel> {
  const IntroFooter(
      {super.key, required this.itemSize, required this.selectedPosition});
  final int itemSize;
  final int selectedPosition;

  @override
  Widget build(BuildContext context, IntroViewModel viewModel) {
    return Column(
      children: [
        Container(
          height: 50,
          alignment: AlignmentDirectional.center,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  itemSize, (index) => indicator(index == selectedPosition))),
        ),
        const SizedBox(height: 72),
        Container(
          margin: const EdgeInsets.all(32.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: const Color(0xFFE3562A),
            onPressed: viewModel.onNexPage,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                viewModel.buttonText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget indicator(bool isSelected) {
    return Container(
      height: 6,
      margin: const EdgeInsets.all(6),
      width: isSelected ? 16 : 6,
      decoration: BoxDecoration(
          borderRadius: isSelected ? BorderRadius.circular(4) : null,
          color: isSelected ? const Color(0xFF65AAEA) : Colors.grey,
          shape: isSelected ? BoxShape.rectangle : BoxShape.circle),
    );
  }
}
