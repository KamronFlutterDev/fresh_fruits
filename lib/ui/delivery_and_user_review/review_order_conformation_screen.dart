import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_text_style.dart';
import 'order_tracking_screen.dart';

class ReviewOrderConformation extends StatelessWidget {
  const ReviewOrderConformation({Key? key}) : super(key: key);

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
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Center(
                child: Image.asset(ImageAssets.onBoardingPageThree),
              ),
            ),
            const SizedBox(height: 111),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: const Text(
                'Your Order in process',
                style: SelfTextStyle.onBoardingPageText1,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                style: SelfTextStyle.onBoardingPageText3
                    .copyWith(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 96),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: AppTextButton(
            buttonText: 'TRACK YOUR ORDER',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderTrackingScreen()));
            },
              ),
            )
          ],
        ),
      ),
    );
  }
}
