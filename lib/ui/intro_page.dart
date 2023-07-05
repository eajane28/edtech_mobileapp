import 'package:flutter/material.dart';
//import 'package:onboarding/onboarding.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    //page1
    Column(
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
            color: Color(0xFF3B3936),
            fontSize: 14,
          ),
        ),
      ],
    ),
    //page2
    Column(
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
            color: Color(0xFF3B3936),
            fontSize: 14,
          ),
        ),
      ],
    ),
    //page3
    Column(
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
            color: Color(0xFF3B3936),
            fontSize: 14,
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            alignment: Alignment.center,
            child: PageView(
              children: onboardingPagesList,
            )));
  }
}

// @override
// void initState() {
//   super.initState();
//   materialButton = _skipButton();
//   index = 0;
// }

// Material _skipButton({void Function(int)? setIndex}) {
//     return Material(
//       borderRadius: defaultSkipButtonBorderRadius,
//       color: defaultSkipButtonColor,
//       child: InkWell(
//         borderRadius: defaultSkipButtonBorderRadius,
//         onTap: () {
//           if (setIndex != null) {
//             index = 2;
//             setIndex(2);
//           }
//         },
//         child: const Padding(
//           padding: defaultSkipButtonPadding,
//           child: Text(
//             'Skip',
//             style: defaultSkipButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }