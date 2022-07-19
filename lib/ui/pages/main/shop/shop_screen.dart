import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/ui/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/pages/main/home/widgets/product_card.dart';

import '../../../core/app_border_styles.dart';
import 'item_details_screen.dart';

List<String> productImageListFirstHalf = [
  ImageAssets.productsGrape,
  ImageAssets.productsBanana,
  ImageAssets.productsAvocado,
  ImageAssets.productsApple,
  ImageAssets.productsStrowberry,
  ImageAssets.productsPineApple,
];
List<String> productImageListSecondHalf = [
  ImageAssets.productsMandirins,
  ImageAssets.productsTomatoes,
  ImageAssets.productsMultiFruits,
  ImageAssets.productsOrange,
  ImageAssets.productsBlueberry,
];
List<String> productNameListFirstHalf = [
  'Grape',
  'Brocoli',
  'Banana',
  'Avocado',
  'Apple',
  'Strowberry',
  'PineApple',
];
List<String> productNameListSecondHalf = [
  'Mandirins',
  'Tomatoes',
  'MultiFruits',
  'Orange',
  'Blueberry',
];
List<String> productPriceList = [
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
  '6.7',
];

class FruitsCategoryScreen extends StatelessWidget {
  const FruitsCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(SvgAssets.icBack),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: AppColors.white,
                        iconSize: 33,
                      ),
                    ],
                  ),
                  const SizedBox(height: 45),
                  Text(
                    'Fruits Category',
                    style: SelfTextStyle.mainStyleOfEachScreenTitle
                        .copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 5),
                  // Same termAndCondition textStyle used with different color
                  Text(
                    '87 Items',
                    style: SelfTextStyle.termAndConditions
                        .copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(38, 20, 28, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 23),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: AppColors.whiteF0,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 25, top: 5, left: 11),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      iconColor: AppColors.whiteF0,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                      hintText: 'Search here',
                                      hintStyle: SelfTextStyle.hintText,
                                      border: AppBorderStyle.borderStyleRed,
                                      enabledBorder: _borderStyle(),
                                      focusedBorder: _borderStyle(),
                                      disabledBorder: _borderStyle(),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(SvgAssets.icSearch),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 18.0),
                                    child: ProductCard(
                                      productImage:
                                          productImageListFirstHalf[index],
                                      productName:
                                          productNameListFirstHalf[index],
                                      productPrice: productPriceList[index],
                                      favoriteOnPressed: () {},
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const  ItemDetailsScreen()));
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 18.0),
                                    child: ProductCard(
                                      productImage:
                                          productImageListSecondHalf[index],
                                      productName:
                                          productNameListFirstHalf[index],
                                      productPrice: productPriceList[index],
                                      favoriteOnPressed: () {},
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const  ItemDetailsScreen()));
                                      },
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

InputBorder _borderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: AppColors.whiteF0),
  );
}
