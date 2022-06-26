import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/ui/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/pages/main/shop/shopping_cart_screen.dart';

const String descriptionContent =
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit,  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.   eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam """;

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  /// TODO: globalize Colors
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
                      image: AssetImage(ImageAssets.orange_background_imageEx),
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
                  )
                ]),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFd18523),
                  ),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2F2F2),
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
                                '\$' '4.9',
                                style: SelfTextStyle.productDetailName
                                    .copyWith(color: AppColors.yellow),
                              ),
                              const Spacer(),
                              Container(
                                height: 35,
                                padding:
                                    const EdgeInsets.only(left: 2, bottom: 3),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEFEFEF),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(SvgAssets.icMinus),
                                    ),
                                    const Text(
                                      '3',
                                      style: SelfTextStyle.itemsNumber,
                                    ),
                                    IconButton(
                                      onPressed: () {},
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
                                    .copyWith(color: const Color(0xFFAAAAAA)),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                        ImageAssets.sampleUserImage1),
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                        ImageAssets.sampleUserImage2),
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
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
                              color: Color(0xFFDDDDDD),
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
                      color: const Color(0xFF12B76A),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.only(right: 28),
                      child: AppTextButton(
                        buttonText: 'ADD TO CART \$70.0',
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
