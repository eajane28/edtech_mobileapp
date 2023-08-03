import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../model/lesson_topics.dart';
import 'topic_introduction_viewmodel.dart';

class TopicIntroductionView extends StackedView<TopicIntroductionViewModel> {
  const TopicIntroductionView(this.topic, {Key? key}) : super(key: key);

  final Topics topic;

  @override
  Widget builder(
    BuildContext context,
    TopicIntroductionViewModel viewModel,
    Widget? child,
  ) {
    return Expanded(
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: viewModel.youtubePlayerController,
          showVideoProgressIndicator: true,
        ),
        builder: (context, player) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Column(
              children: [
                topic.video == null
                    ? CachedNetworkImage(
                        imageUrl: topic.image,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
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
                    Text(
                      topic.intro,
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
