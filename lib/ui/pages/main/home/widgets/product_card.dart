import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

import '../../../../core/app_colors.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String productImage;
  final String productName;
  final String productPrice;
  final double? paddingLayoutLeft;
  final VoidCallback favoriteOnPressed;

  const ProductCard({
    Key? key,
    this.onTap,
    this.paddingLayoutLeft,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.favoriteOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 199,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: AssetImage(productImage)),
        ),
        child: Stack(children: [
          Positioned(
            left: paddingLayoutLeft ?? 10,
            top: 10,
            child: FavoriteButton(
              valueChanged: (isFavorite) {},
              iconDisabledColor: AppColors.white,
              iconSize: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 131, left: paddingLayoutLeft ?? 13),
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
      ),
      onTap: onTap,
    );
  }
}
