import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/ui/views/widgets/card_courses.dart';
import 'package:edtech_mobile/ui/views/widgets/chip.dart';
import 'package:edtech_mobile/ui/views/widgets/search__widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'courses_viewmodel.dart';

class CoursesView extends StackedView<CoursesViewModel> {
  const CoursesView({Key? key, required this.onBackPressed, required this.user}) : super(key: key);

  final void Function() onBackPressed;
  final User user;

  @override
  Widget builder(
    BuildContext context,
    CoursesViewModel viewModel,
    Widget? child,
  ) {
    return viewModel.isBusy
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello,',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFBEBAB3),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/Notification.png'),
                        )),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: SearchBox(),
          ),
          Row(
            children: [
              const Text(
                'Category:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  for (var item in viewModel.coursesList) CustomChip(chip: item),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: viewModel.cardList.length,
                itemBuilder: (context, index) {
                  var cardItem = viewModel.cardList[index];
                  return CourseCard(card: cardItem, onTap: (CardData course) {viewModel.onTap(course);}
                  );
                }),
          )
        ],
      ),
    );
  }

  @override
  CoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CoursesViewModel();
  @override
  void onViewModelReady(CoursesViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
