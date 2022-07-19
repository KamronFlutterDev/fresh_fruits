import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/delivery_and_user_review/user_reviews_screen.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

import '../core/app_assets.dart';
import '../core/app_text_style.dart';



class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(83),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 78.0, top: 25),
            child: Text(
              'Thank you',
              style: SelfTextStyle.mainStyleOfEachScreenTitle,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only( top: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.cancel),
              color: AppColors.orange,
              iconSize: 32,
            ),
          ),
          backgroundColor: AppColors.white,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [

            Image(image: AssetImage(ImageAssets.moto)),
            Padding(
              padding: const EdgeInsets.only(left: 68.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.icFullActiveDot),
                        SvgPicture.asset(SvgAssets.icActiveShortLineVertical),
                        SvgPicture.asset(SvgAssets.icActiveDot),
                        Container(
                          height: 136,
                          width: 2,
                          color: AppColors.whiteCB,
                          child: Container(
                            height: 106,
                            width: 2,
                            margin: const EdgeInsets.only(right: 100),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage(SvgAssets.icActiveShortLine)),
                            ),
                          ),
                        ),
                        SvgPicture.asset(SvgAssets.icDotGrey),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'step 1',
                            style: SelfTextStyle.mainStyleOfEachScreenTitle,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod',
                            style: SelfTextStyle.termAndConditions,
                          ),
                          SizedBox(height: 95),
                          Text(
                            'step 2',
                            style: SelfTextStyle.mainStyleOfEachScreenTitle,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod',
                            style: SelfTextStyle.termAndConditions,
                          ),
                          SizedBox(height: 95),
                          Text(
                            'step 3',
                            style: SelfTextStyle.mainStyleOfEachScreenTitle,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod',
                            style: SelfTextStyle.termAndConditions,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
              child: AppTextButton(
                buttonText: 'SUBMIT REVIEW',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserReviewsScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
