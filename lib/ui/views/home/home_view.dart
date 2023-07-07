import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:edtech_mobile/ui/common/app_colors.dart';
// import 'package:edtech_mobile/ui/common/ui_helpers.dart';
import 'package:onboarding/onboarding.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  final onboardingPagesList = [
    //page1
    PageModel(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/Cool Kids Long Distance Relationship.png',
                width: 375,
                height: 264,
              )),
          const SizedBox(
            width: 341,
            height: 72,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Learn anytime and anywhere',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25.0, left: 25.0),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              child: Text(
                'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    //page2
    PageModel(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/Cool Kids Staying Home.png',
              width: 375,
              height: 264,
            ),
          ),
          const SizedBox(
            width: 341,
            height: 72,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Find a course for you',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25.0, left: 25.0),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              child: Text(
                'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    //page3
    PageModel(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/Cool Kids High Tech.png',
                width: 375,
                height: 264,
              ),
              ),
              const SizedBox(
                height: 40.0,
              ),
          const Text(
            'Improve your skills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3B3936),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25.0, left: 25.0),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              child: Text(
                'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    var index = 0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text(
              'Skip',
              style: TextStyle(color: Color(0xFF78746D)),
            ),
          )
        ],
      ),
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0, right: 80.0),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomIndicator(
                    netDragPercent: dragDistance,
                    pagesLength: pagesLength,
                    indicator: Indicator(
                      indicatorDesign: IndicatorDesign.line(
                        lineDesign: LineDesign(
                          lineType: DesignType.line_nonuniform,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              index == pagesLength - 1
                  ? _goButton()
                  : _nextButton(setIndex: setIndex),
            ],
          );
        },
      ),
    );
  }

  _nextButton({required void Function(int index) setIndex}) {
    var index = 0;
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: GestureDetector(
        onTap: () {
          if (index + 1 < onboardingPagesList.length) {
            onboardingPagesList[index + 1];
            setIndex(index + 1);
          }
        }, //function of the button
        child: Container(
          width: 311,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: const Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ), //design of the button
      ),
    );
  }

  _goButton() {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: GestureDetector(
        onTap: () {
          // Handle the "Let's Start" button click
        },
        child: Container(
          width: 311,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: const Text(
            'Let\'s Start',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
