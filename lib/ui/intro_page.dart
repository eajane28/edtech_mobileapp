import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

// class IntroPage extends StatefulWidget {
//   const IntroPage({Key? key}) : super(key: key);

//   @override
//   State<IntroPage> createState() => _IntroPageState();
// }
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

  // PageModel? skipPage() {
  //   int nextIndex = index + 1;
  //   if (nextIndex < onboardingPagesList.length) {
  //     return onboardingPagesList[nextIndex];
  //   } else {
  //     return null; // No next page, return null
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(padding: EdgeInsets.only(right: 16),
          child: Text('Skip',
          style: TextStyle(
            color: Color(0xFF78746D)
          ),
          ),)
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
                  : _skipButton(setIndex: setIndex)
            ],
          );
        },
      ),
    );
  }

_skipButton({required void Function(int index) setIndex}) {
  GestureDetector(
    onTap: () {
      _goButton();
      // int index=2;
      // const Text('Sign in');
      setIndex(2);
    },
  );
   return Padding(
    padding: const EdgeInsets.all(45.0),
    child: Container(
      width: 311,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: const Text(
        style: TextStyle(color: Colors.white),
        'Next',
      ),
    ),
  );
}

// int _nextButton(newIndex) {

//  GestureDetector(
//     onTap: () {
//       int index=0;
//       int newIndex=index++;
//       // ignore: void_checks
//       return newIndex;
//     },
//   );
//   Padding(
//     padding: const EdgeInsets.all(45.0),
//     child: Container(
//       width: 311,
//       height: 56,
//       decoration: BoxDecoration(
//         color: Colors.orange,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       alignment: Alignment.center,
//       child: const Text(
//         style: TextStyle(color: Colors.white),
//         'Next',
//       ),
//     ),
//   );
// }


_goButton() {
 
  return Padding(
    padding: const EdgeInsets.all(45.0),
    child: Container(
      width: 311,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: const Text(
        style: TextStyle(color: Colors.white),
        'Let\'s Start',
      ),
    ),
  );
}
}