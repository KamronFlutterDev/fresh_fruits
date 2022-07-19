import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_text_style.dart';

class DailyRecomendationCard extends StatelessWidget {
  final String cardImage;
  final String cardTitleFirstPart;
  final String cardTitleSecondPart;

  const DailyRecomendationCard({
    Key? key,
    required this.cardTitleFirstPart,
    required this.cardTitleSecondPart,
    required this.cardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(cardImage)),
        color: AppColors.white,
      ),
      child: Stack(children:  [
        Positioned(
          top: 93,
          left: 23,
          child: Text(
            cardTitleSecondPart,
            style: SelfTextStyle.homeScrRecomndTextStyle,
          ),
        ),
        Positioned(
          top: 113,
          left: 23,
          child: Text(
            cardTitleSecondPart,
            style: SelfTextStyle.homeScrRecomndTextStyle,
          ),
        ),
      ]),
    );
  }
}
