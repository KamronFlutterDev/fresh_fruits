import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_text_style.dart';

class ReusableItemDetailsCard extends StatefulWidget {
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
  State<ReusableItemDetailsCard> createState() =>
      _ReusableItemDetailsCardState();
}

class _ReusableItemDetailsCardState extends State<ReusableItemDetailsCard> {
  void _itemCounter(int counter, int num) {
    if (num == 2) {
      counter++;
      _counter = counter;
      itemsTotalPrice = itemPrice * counter;
    } else if (num == 1) {
      if (counter > 0) {
        counter--;
        _counter = counter;
        itemsTotalPrice -= itemPrice;
      }
    }
  }

  int? _counter = 0;
  double itemsTotalPrice = 0;
  double itemPrice = 5.6;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      child: SizedBox(
        height: 137,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 137,
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
                            image: DecorationImage(
                                image: AssetImage(widget.itemImage)),
                          ),
                        ),
                        Positioned(
                          top: 73,
                          child: Container(
                            height: 40,
                            width: 93,
                            decoration: BoxDecoration(
                              color: AppColors.yellow4B,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                '\$' + widget.itemPrice,
                                style: SelfTextStyle.homeScreTrendingsTextStyle
                                    .copyWith(color: AppColors.black),
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
                            widget.itemType,
                            style: SelfTextStyle.itemTypeShippingCart,
                          ),
                          Text(
                            widget.itemName,
                            style: SelfTextStyle.itemNameShippingCart,
                          ),
                          const SizedBox(height: 36),
                          Text(
                            '\$' + itemsTotalPrice.toStringAsFixed(1),
                            style: SelfTextStyle.itemTotalPriceShippingCart,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 35,
              width: 113,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: AppColors.greyEF,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.remove),
                      color: AppColors.lightBlueGrey,
                      iconSize: 25,
                      splashRadius: 25,
                      onPressed: () {
                        setState(() {
                          _itemCounter(_counter!, 1);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        _counter.toString(),
                        style: SelfTextStyle.itemsNumber,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      color: AppColors.lightBlueGrey,
                      iconSize: 25,
                      splashRadius: 25,
                      onPressed: () {
                        setState(() {
                          _itemCounter(_counter!, 2);
                        });
                      },
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
