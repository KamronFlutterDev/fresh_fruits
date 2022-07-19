import 'package:flutter/material.dart';

import '../../core/app_text_style.dart';


class OnBoardingImageWid extends StatelessWidget {
  final String pageImage;

  const OnBoardingImageWid({
    Key? key,
    required this.pageImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Center(
        child: Image.asset(pageImage),
      ),
    );
  }
}

class OnBoardingTitle extends StatelessWidget {
  final String title;

  const OnBoardingTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Text(
        title,
        style: SelfTextStyle.onBoardingPageText1,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class OnBoardingTitleTwo extends StatelessWidget {
  final String title;

  const OnBoardingTitleTwo({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: Text(
        title,
        style: SelfTextStyle.onBoardingPageText3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
