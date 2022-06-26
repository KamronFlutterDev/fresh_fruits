import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import '../../core/app_colors.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  Color cardColor = AppColors.categoryCardInActiveColor;
  Color cardItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberOneColor = AppColors.categoryCardInActiveColor;
  Color cardNumberOneItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberTwoColor = AppColors.categoryCardInActiveColor;
  Color cardNumberTwoItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberThreeColor = AppColors.categoryCardInActiveColor;
  Color cardNumberThreeItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberFourColor = AppColors.categoryCardInActiveColor;
  Color cardNumberFourItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberFiveColor = AppColors.categoryCardInActiveColor;
  Color cardNumberFiveItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberSixColor = AppColors.categoryCardInActiveColor;
  Color cardNumberSixItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberSevenColor = AppColors.categoryCardInActiveColor;
  Color cardNumberSevenItemsColor = AppColors.categoryItemsInActiveColor;

  Color cardNumberEightColor = AppColors.categoryCardInActiveColor;
  Color cardNumberEightItemsColor = AppColors.categoryItemsInActiveColor;


  void updateCardColor(int cardNumber) {

    if ( cardNumber == 1) {
      if (cardNumberOneColor == AppColors.categoryCardInActiveColor) {
        cardNumberOneColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberOneColor == AppColors.categoryCardActiveColor) {
        cardNumberOneColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberOneItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberOneItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberOneItemsColor ==
          AppColors.categoryItemsActiveColor) {
        cardNumberOneItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 2) {
      if (cardNumberTwoColor == AppColors.categoryCardInActiveColor) {
        cardNumberTwoColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberTwoColor == AppColors.categoryCardActiveColor) {
        cardNumberTwoColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberTwoItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberTwoItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberTwoItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberTwoItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 3) {
      if (cardNumberThreeColor == AppColors.categoryCardInActiveColor) {
        cardNumberThreeColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberThreeColor == AppColors.categoryCardActiveColor) {
        cardNumberThreeColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberThreeItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberThreeItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberThreeItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberThreeItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 4) {
      if (cardNumberFourColor == AppColors.categoryCardInActiveColor) {
        cardNumberFourColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberFourColor == AppColors.categoryCardActiveColor) {
        cardNumberFourColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberFourItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberFourItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberFourItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberFourItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 5) {
      if (cardNumberFiveColor == AppColors.categoryCardInActiveColor) {
        cardNumberFiveColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberFiveColor == AppColors.categoryCardActiveColor) {
        cardNumberFiveColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberFiveItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberFiveItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberFiveItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberFiveItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 6) {
      if (cardNumberSixColor == AppColors.categoryCardInActiveColor) {
        cardNumberSixColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberSixColor == AppColors.categoryCardActiveColor) {
        cardNumberSixColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberSixItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberSixItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberSixItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberSixItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 7) {
      if (cardNumberSevenColor == AppColors.categoryCardInActiveColor) {
        cardNumberSevenColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberSevenColor == AppColors.categoryCardActiveColor) {
        cardNumberSevenColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberSevenItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberSevenItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberSevenItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberSevenItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }
    if ( cardNumber == 8) {
      if (cardNumberEightColor == AppColors.categoryCardInActiveColor) {
        cardNumberEightColor = AppColors.categoryCardActiveColor;
      } else if (cardNumberEightColor == AppColors.categoryCardActiveColor) {
        cardNumberEightColor = AppColors.categoryCardInActiveColor;
      }
      if (cardNumberEightItemsColor == AppColors.categoryItemsInActiveColor) {
        cardNumberEightItemsColor = AppColors.categoryItemsActiveColor;
      } else if (cardNumberEightItemsColor == AppColors.categoryItemsActiveColor) {
        cardNumberEightItemsColor = AppColors.categoryItemsInActiveColor;
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
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
                  )),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(1);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberOneColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrFruits,
                              itemName: 'Fruits',
                              itemAmount: '87',
                              itemsNameAmountColor: cardNumberOneItemsColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(2);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberTwoColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName:
                                  SvgAssets.categoriesScrVegetables,
                              itemName: 'Vegetables',
                              itemAmount: '27',
                              itemsNameAmountColor: cardNumberTwoItemsColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(3);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberThreeColor,
                            cardChild: CategoryCardContent(
                                itemImageAssetName:
                                    SvgAssets.categoriesScrMashrooms,
                                itemName: 'Mashroom',
                                itemAmount: '64',
                                itemsNameAmountColor:
                                    cardNumberThreeItemsColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 23),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(4);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberFourColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrMilk,
                              itemName: 'Dairy',
                              itemAmount: '47',
                              itemsNameAmountColor: cardNumberFourItemsColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(5);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberFiveColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrOats,
                              itemName: 'Oats',
                              itemAmount: '72',
                              itemsNameAmountColor: cardNumberFiveItemsColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 23),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(6);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberSixColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrBread,
                              itemName: 'Bread',
                              itemAmount: '32',
                              itemsNameAmountColor: cardNumberSixItemsColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(7);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberSevenColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrRice,
                              itemName: 'Rice',
                              itemAmount: '323',
                              itemsNameAmountColor: cardNumberSevenItemsColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 23),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCardColor(8);
                            });
                          },
                          child: ReusableCategoryCard(
                            color: cardNumberEightColor,
                            cardChild: CategoryCardContent(
                              itemImageAssetName: SvgAssets.categoriesScrEggs,
                              itemName: 'Eggs',
                              itemAmount: '98',
                              itemsNameAmountColor: cardNumberEightItemsColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 17),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCategoryCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  const ReusableCategoryCard(
      {Key? key, required this.cardChild, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138.74,
      width: 138.74,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28.3204),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(9, 0),
            blurRadius: 19,
            spreadRadius: 2,
          )
        ],
      ),
      child: cardChild,
    );
  }
}

class CategoryCardContent extends StatelessWidget {
  final String itemName;
  final String itemAmount;
  final String itemImageAssetName;
  final Color itemsNameAmountColor;

  const CategoryCardContent(
      {Key? key,
      required this.itemName,
      required this.itemAmount,
      required this.itemImageAssetName,
      required this.itemsNameAmountColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          itemImageAssetName,
          color: itemsNameAmountColor,
        ),
        const SizedBox(height: 9.4),
        Text(
          itemName,
          style: SelfTextStyle.categoriesScrItemsName
              .copyWith(color: itemsNameAmountColor),
        ),
        Text(
          itemAmount + 'Items',
          style: SelfTextStyle.categoriesScrItems
              .copyWith(color: itemsNameAmountColor),
        ),
      ],
    );
  }
}
