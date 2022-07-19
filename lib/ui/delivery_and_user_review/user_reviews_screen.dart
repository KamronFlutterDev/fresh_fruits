import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_text_style.dart';
import '../pages/main/widgets/review_card.dart';

class UserReviewsScreen extends StatelessWidget {
  const UserReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(83),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 68.0, top: 25),
            child: Text(
              'Write Review',
              style: SelfTextStyle.mainStyleOfEachScreenTitle,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.cancel),
              color: AppColors.orange,
              iconSize: 32,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Column(
                children: const [
                  Text(
                    'Tell Us to Improve',
                    style: SelfTextStyle.mainStyleOfEachScreenTitle,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetu adipiscing elit, sed do eiusmod',
                    style: SelfTextStyle.itemsDescContent,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Center(
              child: Text(
                '5.0',
                style: SelfTextStyle.rankText,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          SvgAssets.icActiveStar,
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          SvgAssets.icActiveStar,
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          SvgAssets.icActiveStar,
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          SvgAssets.icActiveStar,
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          SvgAssets.icActiveStar,
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    const Text(
                      'Let us know what you think',
                      style: SelfTextStyle.uCartDetailHeading,
                    ),
                    const SizedBox(height: 20),
                    const ReviewCard(),
                    const SizedBox(height: 49),
                    AppTextButton(
                      buttonText: 'DONE',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
