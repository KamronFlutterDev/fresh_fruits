import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/pages/main/shop/shopping_cart_screen.dart';
import 'package:fresh_fruits/ui/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

const String descriptionContent =
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit,  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.   eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam """;

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
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
  double itemPrice = 4.9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(ImageAssets.productsBanana),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(SvgAssets.icBack),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 350,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ]),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.yellow23,
                  ),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: AppColors.whiteEF,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -1),
                          blurRadius: 21,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Fruits',
                            style: SelfTextStyle.termAndConditionsYellow
                                .copyWith(color: AppColors.black),
                          ),
                          const Text(
                            'Fresh Orange',
                            style: SelfTextStyle.productDetailName,
                          ),
                          const SizedBox(height: 7),
                          Row(
                            children: [
                              Text(
                                '\$' + itemPrice.toString(),
                                style: SelfTextStyle.productDetailName
                                    .copyWith(color: AppColors.yellow),
                              ),
                              const Spacer(),
                              Container(
                                height: 35,
                                padding:
                                    const EdgeInsets.only(left: 2, bottom: 3),
                                decoration: BoxDecoration(
                                  color: AppColors.whiteEF,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _itemCounter(_counter!, 1);
                                        });
                                      },
                                      icon: SvgPicture.asset(SvgAssets.icMinus),
                                    ),
                                    Text(
                                      _counter.toString(),
                                      style: SelfTextStyle.itemsNumber,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _itemCounter(_counter!, 2);
                                        });
                                      },
                                      icon: SvgPicture.asset(SvgAssets.icPlus),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 23),
                          Row(
                            children: [
                              SvgPicture.asset(SvgAssets.icStar),
                              const SizedBox(width: 9),
                              Text(
                                '4.5',
                                style: SelfTextStyle.homeScreTrendingsTextStyle
                                    .copyWith(color: AppColors.black),
                              ),
                              const SizedBox(width: 9),
                              Text(
                                '(123 reviews)',
                                style: SelfTextStyle.termAndConditions
                                    .copyWith(color: AppColors.white),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    backgroundImage: AssetImage(
                                        ImageAssets.sampleUserImage1),
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    backgroundImage: AssetImage(
                                        ImageAssets.sampleUserImage2),
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    backgroundImage: AssetImage(
                                        ImageAssets.sampleUserImage3),
                                    radius: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 22),
                          SizedBox(
                            width: 339,
                            height: 46,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Description',
                                      style: SelfTextStyle.itemsOverviewActive,
                                    )),
                                const SizedBox(width: 29),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Review',
                                      style:
                                          SelfTextStyle.itemsOverviewInactive,
                                    )),
                                const SizedBox(width: 31),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Discussion',
                                      style:
                                          SelfTextStyle.itemsOverviewInactive,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 2,
                            decoration: const BoxDecoration(
                              color: AppColors.whiteDD,
                            ),
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage(
                                        ImageAssets.icLineActivePart)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 23),
                          SizedBox(
                            height: 149,
                            child: ListView(
                              children: const [
                                Text(
                                  descriptionContent,
                                  style: SelfTextStyle.itemsDescContent,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [
              const Material(
                elevation: 10,
                child: SizedBox(
                  height: 82,
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 93,
                    margin: const EdgeInsets.only(left: 28, top: 10, right: 20),
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: FavoriteButton(
                        valueChanged: (valueChanged) {},
                        iconSize: 35,
                        iconDisabledColor: AppColors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.only(right: 28),
                      child: AppTextButton(
                        buttonText: 'ADD TO CART \$' +
                            itemsTotalPrice.toStringAsFixed(1),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ShoppingCartScreen()));
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
