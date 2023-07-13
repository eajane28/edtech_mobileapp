import 'package:edtech_mobile/ui/common/back_button.dart';
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
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Row(
                    children: [
                      Container(child: backButton()),
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            'HTML',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                            '50',
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
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: const Color(0xFFE3562A),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Text('Add to cart',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        )),
                  ),
                )
              ),
                
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
