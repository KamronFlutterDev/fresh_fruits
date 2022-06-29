import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/widgets/app_text_field.dart';
import 'package:fresh_fruits/UI/pages/shop/review_order_conformation_screen.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_text_style.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 0.6,
              child: SizedBox(
                height: 83,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(SvgAssets.icBackBlack)),
                    ),
                    const Center(
                      child: Text(
                        'Checkout',
                        style: SelfTextStyle.mainStyleOfEachScreenTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 112,
                        width: double.infinity,
                        color: AppColors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(SvgAssets.icFullActiveDot),
                                Container(
                                  height: 2,
                                  width: 206,
                                  color: const Color(0xFFCBCBCB),
                                  child: Container(
                                    height: 106,
                                    width: 2,
                                    margin: const EdgeInsets.only(right: 100),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              SvgAssets.icActiveShortLine)),
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(SvgAssets.icActiveShortLine),
                                SvgPicture.asset(SvgAssets.icActiveDot),
                              ],
                            ),
                            const SizedBox(height: 19),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shipping Address',
                                  style: SelfTextStyle.termAndConditionsYellow
                                      .copyWith(color: AppColors.orange),
                                ),
                                const SizedBox(width: 95),
                                Text(
                                  'Shipping Address',
                                  style: SelfTextStyle.termAndConditionsYellow
                                      .copyWith(color: AppColors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView(
                          // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)))),
                              onPressed: () {},
                              child: Container(
                                width: 194,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: Colors.orange)),
                                child: const Text(
                                  'Cash on Delivery',
                                  style: SelfTextStyle.buttonStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)))),
                              onPressed: () {},
                              child: Container(
                                width: 194,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFEC54B),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: const Text(
                                  'Credit Card',
                                  style: SelfTextStyle.buttonStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)))),
                              onPressed: () {},
                              child: Container(
                                width: 194,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: Colors.orange)),
                                child: const Text(
                                  'Credit card',
                                  style: SelfTextStyle.buttonStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 141,
                              width: 216,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageAssets.creditCard),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18),
                            Container(
                              height: 141,
                              width: 216,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageAssets.creditCard),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Text(
                      'Card Holder Name',
                      style: SelfTextStyle.uCartDetailHeading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'Md Rafatul Jabar',
                      textStyle: SelfTextStyle.uCart,
                      filledColor: const Color(0xffEAEAEA),
                      borderStyle: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Color(0xFFCACACA)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Text(
                      'Card Number',
                      style: SelfTextStyle.uCartDetailHeading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: '333 4444 5555 6666',
                      textStyle: SelfTextStyle.uCart,
                      filledColor: const Color(0xffEAEAEA),
                      borderStyle: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xFFCACACA)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: const [
                        Text(
                          'Month/Year',
                          style: SelfTextStyle.uCartDetailHeading,
                        ),
                        SizedBox(width: 120),
                        Text(
                          'CVV',
                          style: SelfTextStyle.uCartDetailHeading,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            hintText: 'Enter here',
                            textStyle: SelfTextStyle.uCart,
                            borderStyle: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xFFCACACA)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 19),
                        Expanded(
                          child: AppTextField(
                            hintText: 'Enter here',
                            textStyle: SelfTextStyle.uCart,
                            borderStyle: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xFFCACACA)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Text(
                      'Country',
                      style: SelfTextStyle.uCartDetailHeading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'Choose your country',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xFFCACACA)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: const Color(0xFF12B76A), width: 3),
                          ),
                          child: Center(
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: const Color(0xFF12B76A),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          'Save shipping address',
                          style: SelfTextStyle.uCart,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Material(
                    elevation: 1,
                    child: SizedBox(
                      height: 82,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: AppTextButton(
                          buttonText: 'CONFIRM ORDER',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ReviewOrderConformation()));
                          },
                        ),
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
