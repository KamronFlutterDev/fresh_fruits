import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;
  final VoidCallback favoriteOnPressed;

  const ProductCard(
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
        image: DecorationImage(image: AssetImage(productImage)),
      ),
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
