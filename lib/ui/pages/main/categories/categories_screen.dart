import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/ui/pages/main/shop/shop_screen.dart';
import '../../../core/app_colors.dart';
import 'widgets/category_card.dart';

List<String> cardImageListFirstHalf = [
  SvgAssets.categoriesScrFruits,
  SvgAssets.categoriesScrVegetables,
  SvgAssets.categoriesScrMashrooms,
  SvgAssets.categoriesScrBread,
];
List<String> cardImageListSecondHalf = [
  SvgAssets.categoriesScrEggs,
  SvgAssets.categoriesScrOats,
  SvgAssets.categoriesScrRice,
  SvgAssets.categoriesScrMilk,
];
List<String> cardProductTypeListFirstHalf = [
  'Fruits',
  'Vegetables',
  'Mashroom',
  'Bread'
];
List<String> cardProductTypeListSecondtHalf = ['Eggs', 'Oats', 'Rice', 'Milk'];
List<Widget> cardProductScreensList = [
  const FruitsCategoryScreen(),
];

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 0.5,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 8),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(SvgAssets.icBackBlack)),
                  ),
                  const SizedBox(width: 89),
                  const Center(
                    child: Text(
                      'Categories',
                      style: SelfTextStyle.mainStyleOfEachScreenTitle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 16, left: 26, right: 13),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                              height: 15,
                              thickness: 0.1,
                              color: Colors.grey.shade300,
                            ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const FruitsCategoryScreen()));
                              });
                            },
                            child: CategoryCard(
                              color: AppColors.white,
                              cardChild: CategoryCardContent(
                                itemImageAssetName:
                                cardImageListFirstHalf[index],
                                itemName: cardProductTypeListFirstHalf[index],
                                itemAmount: '87',
                                itemsNameAmountColor: AppColors.orange,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 16, left: 16, right: 23),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                              height: 15,
                              thickness: 0.1,
                              color: Colors.grey.shade300,
                            ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const FruitsCategoryScreen()));
                              });
                            },
                            child: CategoryCard(
                              color: AppColors.white,
                              cardChild: CategoryCardContent(
                                itemImageAssetName:
                                cardImageListSecondHalf[index],
                                itemName: cardProductTypeListSecondtHalf[index],
                                itemAmount: '87',
                                itemsNameAmountColor: AppColors.orange,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
