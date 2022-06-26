import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/UI/pages/categories/categories_screen.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Good morning',
                  style: SelfTextStyle.termAndConditions,
                ),
                Row(
                  children: [
                    const Text(
                      'Surname Name',
                      style: SelfTextStyle.authTitle,
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add_alert)),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  height: 162,
                  // width: 213,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 263,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageAssets
                                  .homeScreenRecomendationBackground1)),
                          color: AppColors.white,
                        ),
                        child: Stack(children: const [
                          Positioned(
                            top: 93,
                            left: 23,
                            child: Text(
                              'Recomended',
                              style: SelfTextStyle.homeScrRecomndTextStyle,
                            ),
                          ),
                          Positioned(
                            top: 113,
                            left: 23,
                            child: Text(
                              'Recipe Today',
                              style: SelfTextStyle.homeScrRecomndTextStyle,
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 263,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageAssets
                                  .homeScreenRecomendationBackground2)),
                          color: AppColors.white,
                        ),
                        child: Stack(children: const [
                          Positioned(
                            top: 93,
                            left: 23,
                            child: Text(
                              'Fresh Fruits ',
                              style: SelfTextStyle.homeScrRecomndTextStyle,
                            ),
                          ),
                          Positioned(
                            top: 113,
                            left: 23,
                            child: Text(
                              'Delivery',
                              style: SelfTextStyle.homeScrRecomndTextStyle,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                        height: 27 / 18,
                      ),
                    ),
                    const SizedBox(width: 211),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoriesScreen()));
                        },
                        icon: SvgPicture.asset(SvgAssets.icForward)),
                  ],
                ),
                SizedBox(
                  // TODO: add functionality to each category
                  height: 113,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesFruits)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesMashrooms)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesMilk)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesBread)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesEggs)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesOats)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesRice)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 73,
                          width: 93,
                          child: Center(
                              child: SvgPicture.asset(
                                  SvgAssets.homeScrCategoriesVegatables)),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(9, 0),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Trending Deals',
                      style: SelfTextStyle.authTitle,
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(SvgAssets.icForward)),
                  ],
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: SizedBox(
                    height: 550,
                    width: 100,
                    child: ListView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage:
                                    ImageAssets.homeScrTrendingsAvocado,
                                productName: 'Avocado',
                                productPrice: '6.7',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 25),
                            ReusableProductCard(
                                productImage:
                                    ImageAssets.homeScrTrendingsBrocoli,
                                productName: 'Brocoli',
                                productPrice: '8.7',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            ReusableProductCard(
                                productImage:
                                    ImageAssets.homeScrTrendingsTamato,
                                productName: 'Tamato',
                                productPrice: '4.9',
                                favoriteOnPressed: () {}),
                            const SizedBox(width: 25),
                            ReusableProductCard(
                                productImage: ImageAssets.homeScrTrendingsGrape,
                                productName: 'Grape',
                                productPrice: '7.2',
                                favoriteOnPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 35,
                          ),
                          child: AppTextButton(
                            onPressed: () {},
                            buttonText: 'MORE',
                            buttonColor: AppColors.black,
                            buttonTextStyle: SelfTextStyle.buttonStyle
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableProductCard extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;
  final VoidCallback favoriteOnPressed;

  const ReusableProductCard(
      {Key? key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.favoriteOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: AssetImage(productImage))),
      child: Stack(children: [
        // TODO: set a functionality for icon button
        IconButton(
          onPressed: favoriteOnPressed,
          icon: const Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 131, left: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                productName,
                style: SelfTextStyle.homeScreTrendingsTextStyle,
              ),
              Text(
                '\$' + productPrice,
                style: SelfTextStyle.homeScreTrendingsTextStyle,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
