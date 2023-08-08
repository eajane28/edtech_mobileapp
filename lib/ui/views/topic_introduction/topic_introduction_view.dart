import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/model/course_topics.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'topic_introduction_viewmodel.dart';

class TopicIntroductionView extends StackedView<TopicIntroductionViewModel> {
  const TopicIntroductionView({Key? key, required this.topic, required this.topicIndex, required this.course})
      : super(key: key);

  final CourseTopics topic;
  final int topicIndex;
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    TopicIntroductionViewModel viewModel,
    Widget? child,
  ) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: viewModel.youtubePlayerController,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Stack(
            children: [
              viewModel.play == false
                  ? CachedNetworkImage(
                      imageUrl: topic.image!,
                      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                      fadeInDuration: const Duration(milliseconds: 800),
                      fit: BoxFit.cover,
                    )
                  : SizedBox(
                      width: 512,
                      height: 360,
                      child: AspectRatio(
                        aspectRatio: 16 / 19,
                        child: player,
                      )),
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
                              onPressed: () => viewModel.playVideo(),
                              icon: const Icon(Icons.play_circle_outline_sharp)),
                        ))
            ],
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Introduction',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3C3A36),
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  Text(
                    topic.intro!,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF78746D),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  @override
  void onViewModelReady(TopicIntroductionViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  TopicIntroductionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TopicIntroductionViewModel(topic: topic);
}
