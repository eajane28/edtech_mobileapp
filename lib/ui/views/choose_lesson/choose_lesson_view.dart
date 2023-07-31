import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/app/app.locator.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/lesson_item.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'choose_lesson_viewmodel.dart';

class ChooseLessonView extends StackedView<ChooseLessonViewModel> {
  const ChooseLessonView({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    ChooseLessonViewModel viewModel,
    Widget? child,
  ) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: viewModel.youtubePlayerController,
        showVideoProgressIndicator: true,
        onEnded: (metadata) {
          viewModel.onVideoEnd();
        },
      ),
      builder: (context, player) {
        return SafeArea(
        child: Scaffold(
          appBar: MyAppBar(title: course.title, onTap: locator<NavigationService>().back),
          body: viewModel.isBusy
                ? const MyCircularProgressBar()
                : ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFF5EE),
                              ),
                              child: Stack(
                                children: [
                          viewModel.play
                              ? player
                              : CachedNetworkImage(
                                  imageUrl: course.image,
                                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                                  fadeInDuration: const Duration(milliseconds: 800),
                                ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: viewModel.play
                                  ? const SizedBox.shrink()
                                  : Align(
                                      alignment: Alignment.bottomRight,
                                      child: IconButton(
                                          iconSize: 50,
                                          color: Colors.blue[300],
                                          onPressed: () => viewModel.playVideo(course),
                                          icon: const Icon(Icons.play_circle_outline_sharp)),
                                    ))
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
                      // for (CourseTopics topic in viewModel.lessonList) LessonItem(topic: topic)
                      ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) => LessonItem(topic: viewModel.lessonList[index]),
                          separatorBuilder: (context, index) => const SizedBox.shrink(),
                          itemCount: viewModel.lessonList.length)
                    ],
                  ),
        ),
      );
      },
    );
  }

  @override
  void onViewModelReady(ChooseLessonViewModel viewModel) {
    viewModel.init(course);
    super.onViewModelReady(viewModel);
  }

  @override
  ChooseLessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChooseLessonViewModel();
}
