import 'package:edtech_mobile/ui/views/widgets/appbar.dart';
import 'package:edtech_mobile/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                appBar('HTML', onTap: null),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: [
                      Image.asset('assets/Illustration.png'),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Chip(
                          label: Text(
                            '\$50',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF2F2F2),
                            ),
                          ),
                          backgroundColor: Color(0xFF65AAEA),
                        ),
                      )
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Align(
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
                      "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                      style: TextStyle(
                        height: 1.7,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3C3A36),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
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
                          '1 h 30 min',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3C3A36),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: button('Add to cart', onTap: viewModel.addToCart)),
              ],
            ),
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
