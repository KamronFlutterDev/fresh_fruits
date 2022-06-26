import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/UI/core/widgets/app_text_field.dart';
import 'package:fresh_fruits/UI/pages/auth/registration_screen.dart';
import 'package:fresh_fruits/UI/pages/home/home_screen.dart';
import 'package:fresh_fruits/UI/pages/shop/item_details.dart';

import '../../core/app_colors.dart';

class FruitsCategoryScreen extends StatelessWidget {
  const FruitsCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.icBack)),
                      const SizedBox(width: 255),
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
                ],
              ),
            ),
            Expanded(
              child: Transform.translate(
                offset: const Offset(1, 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(38, 18, 28, 48),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 23),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: const Color(0xFFF0F0F0),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25, top: 5, left: 11),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        iconColor: const Color(0xFFF0F0F0),
                                        contentPadding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        hintText: 'Search here',
                                        hintStyle:
                                            const TextStyle(color: Color(0xFF7C7C7C)),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(18),
                                            borderSide:
                                                const BorderSide(color: Colors.red)),
                                        enabledBorder: _borderStyle(),
                                        focusedBorder: _borderStyle(),
                                        disabledBorder: _borderStyle(),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgAssets.icSearch)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetailsScreen()));
                              },
                              child: ReusableProductCard(
                                  productImage: ImageAssets.productsAvocado,
                                  productName: 'Blueberry',
                                  productPrice: '8.7',
                                  favoriteOnPressed: () {}),
                            ),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsBlueberry,
                                productName: 'Orange',
                                productPrice: '4.8',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage: ImageAssets.productsOrange,
                                productName: 'Banana',
                                productPrice: '7.2',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsBanana,
                                productName: 'Tomato',
                                productPrice: '4.9',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage: ImageAssets.productsTomatoes,
                                productName: 'Grape',
                                productPrice: '7.2',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsGrape,
                                productName: 'MultiFruits',
                                productPrice: '6.7',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage: ImageAssets.productsMultiFruits,
                                productName: 'Strowberry',
                                productPrice: '8.7',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsStrowberry,
                                productName: 'Apple',
                                productPrice: '4.9',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage: ImageAssets.productsApple,
                                productName: 'Banana',
                                productPrice: '7.2',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsTomato,
                                productName: 'Annans',
                                productPrice: '8.9',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage: ImageAssets.productsPineApple,
                                productName: 'Mandarin',
                                productPrice: '10.2',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 20),
                            ReusableProductCard(
                                productImage: ImageAssets.productsMandirins,
                                productName: 'Mandarins',
                                productPrice: '8.7',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                      ],
                    ),
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
    borderSide: const BorderSide(color: Color(0xFFF0F0F0)),
  );
}
