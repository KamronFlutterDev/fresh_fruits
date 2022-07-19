import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/core/app_colors.dart';
import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/UI/pages/main/shop/shipping_address/shipping_address_screen.dart';
import 'package:fresh_fruits/UI/pages/main/shop/widgets/reusable_item_detail_card.dart';

List<String> productImageList = [
  ImageAssets.productsAvocado ,
  ImageAssets.productsBlueberry ,
  ImageAssets.productsOrange ,
  ImageAssets.productsBanana,
  ImageAssets.productsTomatoes ,
  ImageAssets.productsGrape ,
  ImageAssets.productsMultiFruits,
  ImageAssets.productsStrowberry,
  ImageAssets.productsApple ,
  ImageAssets.productsTomato ,
  ImageAssets.productsPineApple,
  ImageAssets.productsMandirins,
];
List<String> productNameList = [
  'Grape',
  'Brocoli',
  'Banana',
  'Avocado',
  'Apple',
  'Strowberry',
  'PineApple',
  'Mandirins',
  'Tomatoes',
  'MultiFruits',
  'Orange',
  'Blueberry',
];

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 0.7,
              child: Padding(
                padding: const EdgeInsets.only(left: 42),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      const Text(
                        'Item details',
                        style: SelfTextStyle.mainStyleOfEachScreenTitle,
                      ),
                      const SizedBox(width: 109),
                      TextButton(
                        child: const Text(
                          'Place Order',
                          style: SelfTextStyle.shoppingCartScrTextOrange,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ShippingAddressScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: productNameList.length,
                  itemBuilder: (context, int index) {
                    return SwipeActionCell(
                      key: ObjectKey(productNameList[index]),
                      trailingActions: [
                        SwipeAction(
                          onTap: (handler) {
                            setState(() {
                              productNameList.removeAt(index);
                            });
                          },
                          icon: SvgPicture.asset(SvgAssets.rabbishCan),
                          performsFirstActionWithFullSwipe: true,
                          backgroundRadius: 28,
                          color: AppColors.black,
                        )
                      ],
                      child: ReusableItemDetailsCard(
                        itemType: 'Fruits',
                        itemImage: productImageList[index],
                        itemName: productNameList[index],
                        itemPrice: '4.5',
                        itemsTotalPrice: '13.5',
                        totalAmountOfItems: '3',
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
