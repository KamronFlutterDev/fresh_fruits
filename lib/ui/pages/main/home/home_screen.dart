import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/pages/main/home/widgets/daily_recomendetion_card.dart';
import 'package:fresh_fruits/UI/pages/main/home/widgets/item_category_card.dart';
import 'package:fresh_fruits/ui/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/pages/main/categories/categories_screen.dart';
import 'package:fresh_fruits/ui/pages/main/shop/shop_screen.dart';
import '../shop/item_details_screen.dart';
import 'widgets/product_card.dart';

List<String> itemsList = [
  SvgAssets.homeScrCategoriesFruits,
  SvgAssets.homeScrCategoriesMashrooms,
  SvgAssets.homeScrCategoriesMilk,
  SvgAssets.homeScrCategoriesVegatables,
  SvgAssets.homeScrCategoriesBread,
  SvgAssets.homeScrCategoriesRice,
  SvgAssets.homeScrCategoriesOats,
  SvgAssets.homeScrCategoriesEggs,
];

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
                    const SizedBox(width: 160),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_alert),
                    ),
                  ],
                ),
                const SizedBox(height: 23),
                SizedBox(
                  height: 162,
                  // width: 213,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      DailyRecomendationCard(
                        cardImage:
                        ImageAssets.homeScreenRecomendationBackground1,
                        cardTitleFirstPart: 'Recomended',
                        cardTitleSecondPart: 'Recipe Today',
                      ),
                      const SizedBox(width: 10),
                      DailyRecomendationCard(
                        cardImage:
                        ImageAssets.homeScreenRecomendationBackground2,
                        cardTitleFirstPart: 'Fresh Fruits',
                        cardTitleSecondPart: 'Delivery',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      'Categories',
                      style: SelfTextStyle.itemsOverviewActive,
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
                      icon: SvgPicture.asset(SvgAssets.icForward),
                    ),
                  ],
                ),
                SizedBox(
                  height: 113,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCategoryCard(itemImage: itemsList[index]);
                    },
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Trending Deals',
                      style: SelfTextStyle.authTitle,
                    ),
                    const SizedBox(width: 160),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const FruitsCategoryScreen()));
                      },
                      icon: SvgPicture.asset(SvgAssets.icForward),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: SizedBox(
                    height: 550,
                    width: 100,
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const  ItemDetailsScreen()));
                              },
                              child: ProductCard(
                                productImage:
                                ImageAssets.homeScrTrendingsTamato,
                                productName: 'Tamato',
                                productPrice: '4.9',
                                favoriteOnPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const  ItemDetailsScreen()));
                              },
                              child: ProductCard(
                                productImage:
                                ImageAssets.homeScrTrendingsAvocado,
                                productName: 'Avocado',
                                productPrice: '6.7',
                                favoriteOnPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const  ItemDetailsScreen()));
                              },
                              child: ProductCard(
                                productImage: ImageAssets.homeScrTrendingsGrape,
                                productName: 'Grape',
                                productPrice: '7.2',
                                favoriteOnPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const  ItemDetailsScreen()));
                              },
                              child: ProductCard(

                                productImage:
                                ImageAssets.homeScrTrendingsBrocoli,
                                productName: 'Brocoli',
                                productPrice: '8.7',
                                favoriteOnPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        const SizedBox(height: 20),
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
                                .copyWith(color: AppColors.white),
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
