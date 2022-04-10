import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Started extends StatefulWidget {


  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
   Material materialButton;
   int index;

  final onboardingPagesList = [
    PageModel(
        widget: Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromRGBO(250, 249, 246, 1),
              border: Border.all(
                width: 0.0,
                color: background,
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(child: Lottie.asset('assets/imgs/astronaut-with-space-shuttle.json'),
                    width: 500,
                  ),
                  Text('Get Started', style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text('Welcome to our digital office. Explore the different services offered by our world class creatives',
                    style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),
        )
    ),
    PageModel(
      widget: Expanded(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: background,
            border: Border.all(
              width: 0.0,
              color: background,
            ),
          ),
          child: SingleChildScrollView(

            controller: ScrollController(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset('assets/images/facebook.png',
                      color: pageImageColor),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'SECURED BACKUP',
                      style: pageTitleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      )
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/twitter.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CHANGE AND RISE',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Give others access to any file or folders you choose',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/instagram.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EASY ACCESS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reach your files anytime from any devices anywhere',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton ({void Function(int) , setIndex}) {



    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Sign up',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return  Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,

//Footer Maker
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 249, 246, 1),
                border: Border.all(
                  width: 0.0,
                  color: Color.fromRGBO(250, 249, 246, 1),
                ),
              ),
              child: ColoredBox(
                color: Color.fromRGBO(250, 249, 246, 1),
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.line(
                            lineDesign: LineDesign(
                              lineType: DesignType.line_uniform,
                            ),
                          ),
                        ),
                      ),
                      index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

// return Onboarding(
// pages: onboardingPagesList,
// onPageChange: (int pageIndex) {
// index = pageIndex;
// },
// startPageIndex: 0,
//
// //Footer Maker
// footerBuilder: (context, dragDistance, pagesLength, setIndex) {
// return DecoratedBox(
// decoration: BoxDecoration(
// color: background,
// border: Border.all(
// width: 0.0,
// color: background,
// ),
// ),
// child: ColoredBox(
// color: background,
// child: Padding(
// padding: const EdgeInsets.all(45.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// CustomIndicator(
// netDragPercent: dragDistance,
// pagesLength: pagesLength,
// indicator: Indicator(
// indicatorDesign: IndicatorDesign.line(
// lineDesign: LineDesign(
// lineType: DesignType.line_uniform,
// ),
// ),
// ),
// ),
// index == pagesLength - 1
// ? _signupButton
//     : _skipButton(setIndex: setIndex)
// ],
// ),
// ),
// ),
// );
// },
// );