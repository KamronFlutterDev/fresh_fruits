import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import '../../../../../UI/core/app_assets.dart';
import '../../../../../UI/core/app_text_style.dart';
import 'order_tracking_screen.dart';

class ReviewOrderConformation extends StatelessWidget {
  const ReviewOrderConformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 2,
              child: SizedBox(
                height: 83,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 25,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(SvgAssets.icCancelOrange)),
                    ),
                    const Center(
                      child: Text(
                        'Thank You',
                        style: SelfTextStyle.mainStyleOfEachScreenTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: AppTextButton(
                buttonText: 'TRACK YOUR ORDER',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderTrackingScreen()));
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
