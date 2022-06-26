import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_colors.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  /// flutter_swipe_action_cell: ^3.0.4 use for deleting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Material(
            elevation: 0.7,
            child: Padding(
              padding: const EdgeInsets.only(left: 42),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: const [
                    Text(
                      'Item details',
                      style: SelfTextStyle.mainStyleOfEachScreenTitle,
                    ),
                    SizedBox(width: 109),
                    Text(
                      'Place Order',
                      style: SelfTextStyle.shoppingCartScrTextOrange,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 113,
                width: 93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.productBananas),
                  ),
                ),
              ),
              Positioned(
                top: 73,
                child: Container(
                  height: 40,
                  width: 93,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEC54B),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      '\$7.3',
                      style: SelfTextStyle.homeScreTrendingsTextStyle
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'FRUITS',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              height: 18 / 12,
            ),
          ),
          const Text(
            'Banana',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 24 / 16,
            ),
          ),
          const Text(
            '\$29.8',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.orange,
              height: 27 / 17,
            ),
          ),
        ],
      ),
    ));
  }
}
