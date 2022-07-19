import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class CategoryCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  const CategoryCard({
    Key? key,
    required this.cardChild,
    required this.color,
  }) : super(key: key);

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

  const CategoryCardContent({
    Key? key,
    required this.itemName,
    required this.itemAmount,
    required this.itemImageAssetName,
    required this.itemsNameAmountColor,
  }) : super(key: key);

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
