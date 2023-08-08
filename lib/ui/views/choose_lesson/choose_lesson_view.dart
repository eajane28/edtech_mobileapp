import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/choosen_courses_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../model/courses.dart';
// import '../../../model/lesson_topics.dart';
import '../widgets/my_circular_progress_bar.dart';
import 'choose_lesson_viewmodel.dart';

class ChooseLessonView extends StackedView<ChooseLessonViewModel> {
  const ChooseLessonView(this.course, {Key? key}) : super(key: key);
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    ChooseLessonViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: viewModel.youtubePlayerController,
                  showVideoProgressIndicator: true,
                ),
                builder: (context, player) => Column(
                      children: [
                        MyAppBar(title: course.title, onTap: viewModel.backToYourCourses),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: viewModel.isBusy
                                ?  const MyCircularProgressBar()
                                : Column(
                                    children: [
                                      Card(
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFFFF5EE),
                                              ),
                                              child: Column(
                                                children: [
                                                  course.video == null
                                                      ? CachedNetworkImage(
                                                          imageUrl: course.image,
                                                          placeholder: (context, url) =>
                                                              const Center(child: CircularProgressIndicator()),
                                                          errorWidget: (context, url, error) =>
                                                              const Center(child: Icon(Icons.error)),
                                                          fadeInDuration: const Duration(milliseconds: 800),
                                                        )
                                                      : SizedBox(
                                                          width: 512,
                                                          height: 360,
                                                          child: AspectRatio(
                                                            aspectRatio: 16 / 19,
                                                            child: player,
                                                          )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      course.title,
                                                      style: const TextStyle(
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color(0xFF3C3A36),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      course.subtitle,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color(0xFF78746D),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      for (var card in viewModel.topics!)
                                        LessonItem(
                                          topic: card,
                                          course: course,
                                          // onTap: (Topics topic) {
                                          //   viewModel.onTap(topic);
                                          // },
                                        ),
                                    ],
                                  ),
                          ),
                        ),
                      ],
                    ))),
      ),
    );
  }

  @override
  void onViewModelReady(ChooseLessonViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  ChooseLessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChooseLessonViewModel(course: course);
}
