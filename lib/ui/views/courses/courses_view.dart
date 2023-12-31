// ignore_for_file: must_be_immutable

import 'package:edtech_mobile/model/courses.dart';
import 'package:edtech_mobile/model/user.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/card_courses.dart';
import 'package:edtech_mobile/ui/views/widgets/chip.dart';
import 'package:edtech_mobile/ui/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../widgets/my_circular_progress_bar.dart';
import 'courses_viewmodel.dart';

class CoursesView extends StackedView<CoursesViewModel> {
  CoursesView({Key? key, required this.onBackPressed, required this.user}) : super(key: key);

  final void Function() onBackPressed;
  final User user;
  Course? cardData;

  @override
  Widget builder(
    BuildContext context,
    CoursesViewModel viewModel,
    Widget? child,
  ) {
    return viewModel.isBusy
        ? const MyCircularProgressBar(
            indicatorColor: Colors.orange,
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
                InkWell(
                  onTap: viewModel.navigateToSearchView,
                  child: AbsorbPointer(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: SearchBox(controller: viewModel.searchController),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 32,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        const Text(
                          'Category:',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: viewModel.coursesList.length,
                          itemBuilder: (context, index) {
                            var courseItem = viewModel.coursesList[index];
                            return CustomChip(
                              chip: courseItem,
                              onSelected: (isChecked, item) {
                                if (!viewModel.selectedItems.contains(item)) {
                                  viewModel.selectedItems.add(item);
                                } else if (viewModel.selectedItems.contains(item)) {
                                  viewModel.selectedItems.remove(item);
                                }
                                viewModel.init();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceSmall,
                viewModel.busy('courses')
                    ? const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.orange,
                          ),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: viewModel.cardList.length,
                            itemBuilder: (context, index) {
                              var cardItem = viewModel.cardList[index];
                              return CourseCard(
                                  card: cardItem,
                                  onTap: (Course course) {
                                    viewModel.onTap(course);
                                  });
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
