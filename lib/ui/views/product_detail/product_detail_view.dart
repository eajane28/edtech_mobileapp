import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:edtech_mobile/ui/views/widgets/my_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  const ProductDetailView(this.course, {Key? key}) : super(key: key);

  final Course course;

  @override
  Widget builder(
    BuildContext context,
    ProductDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: viewModel.youtubePlayerController,
              showVideoProgressIndicator: true,
            ),
            builder: (context, player) => Column(
              children: [
                MyAppBar(title: course.title, onTap: viewModel.backToHomeView),
                viewModel.isBusy
                    ? const MyCircularProgressBar(
                        indicatorColor: Colors.orange,
                      )
                    : Expanded(
                        child: ScrollConfiguration(
                          behavior: MyScrollBehavior(),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                                  child: Column(
                                    children: [
                                      // Image.network(course.image),
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
                                      const SizedBox(height: 16),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Chip(
                                          label: Text(
                                            '\$${course.price}',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFFF2F2F2),
                                            ),
                                          ),
                                          backgroundColor: const Color(0xFF65AAEA),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'About the course',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF3C3A36),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      course.about,
                                      style: const TextStyle(
                                        height: 1.7,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3C3A36),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Duration',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF3C3A36),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          course.duration,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF3C3A36),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                      ),
                Row(
                  children: [
                    MyWidgetButton(
                      onTap: viewModel.addToCart,
                      color: Colors.transparent,
                      title: const Icon(
                        MaterialCommunityIcons.cart_outline,
                        size: 40,
                        color: Colors.orange,
                      ),
                      width: 40,
                    ),
                    horizontalSpaceMedium,
                    Expanded(
                        child: MyWidgetButton(
                            title: viewModel.isBusy
                                ? const MyCircularProgressBar()
                                : const Text(
                                    'Purchase',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                            onTap: viewModel.purchaseCourse)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(ProductDetailViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  ProductDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailViewModel(course: course);
}
