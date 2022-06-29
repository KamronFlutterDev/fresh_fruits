import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_colors.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/UI/pages/shop/shipping_address_screen.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Material(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 42),
              child: SizedBox(
                height: 70,
                child: Row(
                  children:  [
                    const Text(
                      'Item details',
                      style: SelfTextStyle.mainStyleOfEachScreenTitle,
                    ),
                    const SizedBox(width: 109),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingAddressScreen()));
                      },
                      child: const Text(
                        'Place Order',
                        style: SelfTextStyle.shoppingCartScrTextOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: [
                ReusableItemDetailsCard(
                    itemName: 'Banana',
                    itemImage: ImageAssets.productBananas,
                    itemPrice: '7.3',
                    itemType: 'FRUITS',
                    itemsTotalPrice: '21.9',
                    totalAmountOfItems: '3'),
                ReusableItemDetailsCard(
                    itemName: 'Broccoli',
                    itemImage: ImageAssets.productBrocoli,
                    itemPrice: '4.5',
                    itemType: 'VEGETABLES',
                    itemsTotalPrice: '9',
                    totalAmountOfItems: '2'),
                ReusableItemDetailsCard(
                    itemName: 'Grapes',
                    itemImage: ImageAssets.productsGrape,
                    itemPrice: '5.6',
                    itemType: 'FRUITS',
                    itemsTotalPrice: '16.8',
                    totalAmountOfItems: '3'),
                ReusableItemDetailsCard(
                    itemName: 'Mushrooms',
                    itemImage: ImageAssets.productMashrooms,
                    itemPrice: '8.1',
                    itemType: 'MUSHROOM',
                    itemsTotalPrice: '36.4',
                    totalAmountOfItems: '4'),
                ReusableItemDetailsCard(
                    itemName: 'Broccoli',
                    itemImage: ImageAssets.productBrocoli,
                    itemPrice: '4.5',
                    itemType: 'VEGETABLES',
                    itemsTotalPrice: '9',
                    totalAmountOfItems: '2'),
                ReusableItemDetailsCard(
                    itemName: 'Grapes',
                    itemImage: ImageAssets.productsGrape,
                    itemPrice: '5.6',
                    itemType: 'FRUITS',
                    itemsTotalPrice: '16.8',
                    totalAmountOfItems: '3'),
                ReusableItemDetailsCard(
                    itemName: 'Mushrooms',
                    itemImage: ImageAssets.productMashrooms,
                    itemPrice: '8.1',
                    itemType: 'MUSHROOM',
                    itemsTotalPrice: '36.4',
                    totalAmountOfItems: '4'),
                ReusableItemDetailsCard(
                    itemName: 'Broccoli',
                    itemImage: ImageAssets.productBrocoli,
                    itemPrice: '4.5',
                    itemType: 'VEGETABLES',
                    itemsTotalPrice: '9',
                    totalAmountOfItems: '2'),
                ReusableItemDetailsCard(
                    itemName: 'Grapes',
                    itemImage: ImageAssets.productsGrape,
                    itemPrice: '5.6',
                    itemType: 'FRUITS',
                    itemsTotalPrice: '16.8',
                    totalAmountOfItems: '3'),
                ReusableItemDetailsCard(
                    itemName: 'Mushrooms',
                    itemImage: ImageAssets.productMashrooms,
                    itemPrice: '8.1',
                    itemType: 'MUSHROOM',
                    itemsTotalPrice: '36.4',
                    totalAmountOfItems: '4'),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ReusableItemDetailsCard extends StatelessWidget {
  final String itemImage;
  final String itemPrice;
  final String itemName;
  final String itemType;
  final String itemsTotalPrice;
  final String totalAmountOfItems;

  const ReusableItemDetailsCard({
    Key? key,
    required this.itemName,
    required this.itemImage,
    required this.itemPrice,
    required this.itemType,
    required this.itemsTotalPrice,
    required this.totalAmountOfItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      child: SizedBox(
        height: 137,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 137,
                width: 280,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 113,
                            width: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image:
                                  DecorationImage(image: AssetImage(itemImage)),
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
                                  '\$' + itemPrice,
                                  style: SelfTextStyle
                                      .homeScreTrendingsTextStyle
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemType,
                              style: SelfTextStyle.itemTypeShippingCart,
                            ),
                            Text(
                              itemName,
                              style: SelfTextStyle.itemNameShippingCart,
                            ),
                            const SizedBox(height: 36),
                            Text(
                              '\$' + itemsTotalPrice,
                              style: SelfTextStyle.itemTotalPriceShippingCart,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 19),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 35,
              width: 113,
              margin: const EdgeInsets.only(top: 80, right: 24),
              padding: const EdgeInsets.only(left: 2, bottom: 3),
              decoration: BoxDecoration(
                color: const Color(0xFFEFEFEF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      splashRadius: 26,
                      icon: SvgPicture.asset(SvgAssets.icMinus)),
                  Text(
                    totalAmountOfItems,
                    style: SelfTextStyle.itemsNumber,
                  ),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 26,
                    icon: SvgPicture.asset(SvgAssets.icPlus),
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
