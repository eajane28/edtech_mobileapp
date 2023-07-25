import 'package:edtech_mobile/model/card_data.dart';
import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  const ProductDetailView(this.course, {Key? key}) : super(key: key);

  final CardData course;

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
          child: Column(
            children: [
              MyAppBar(title: course.title, onTap: viewModel.backToHomeView),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Image.network(course.image),
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
              // const SizedBox(height: 200),
              Expanded(child: Container()),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                  child: MyButton(
                      title: 'Purchase', onTap: viewModel.addToCart)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProductDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailViewModel();
}
