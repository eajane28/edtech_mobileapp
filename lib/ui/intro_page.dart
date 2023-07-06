import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late Material materialButton;
  late int index;
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
          const Text(
            'Learn anytime and anywhere',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3B3936),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
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
              )),
          const Text(
            'Find a course for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3B3936),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
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
              )),
          const Text(
            'Improve your skills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3B3936),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
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
                  : _nextButton(setIndex: setIndex)
            ],
          );
        },
      ),
    );
  }

_nextButton({required void Function(int index) setIndex}) {
  return Padding(
    padding: const EdgeInsets.all(45.0),
    child: GestureDetector(
      onTap: () {
        PageModel? nextPage = skipPage();
        if (nextPage != null && setIndex != null) {
          setIndex(index + 1);
        }
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
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
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


  PageModel? skipPage() {
    int nextIndex = index + 1;
    if (nextIndex < onboardingPagesList.length-1) {
      return onboardingPagesList[nextIndex];//only 2nd page is able to display
    } else {
      return null; // No next page, return null
    }
  }

    PageModel? escPage() {
    int nextIndex = index + 1;
    if (nextIndex < onboardingPagesList.length-1) {
      index++;
      return onboardingPagesList[index];
    } else {
      return null; // to be used for skip
    }
  }
}