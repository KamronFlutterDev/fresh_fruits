import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';

import 'package:fresh_fruits/UI/core/app_text_style.dart';
import 'package:fresh_fruits/UI/core/widgets/app_text_field.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';

import '../../../../core/app_border_styles.dart';
import '../../widgets/user_detailed_text_widget.dart';
import '../payment_screen.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

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
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 112,
                    width: double.infinity,
                    color: const Color(0xFFF2F2F2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(SvgAssets.icActiveDot),
                            SvgPicture.asset(SvgAssets.icLineBetweenDots),
                            SvgPicture.asset(SvgAssets.icInActiveDot),
                          ],
                        ),
                        const SizedBox(height: 19),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Shipping Address',
                              style: SelfTextStyle.termAndConditionsYellow
                                  .copyWith(color: AppColors.black),
                            ),
                            const SizedBox(width: 95),
                            Text(
                              'Shipping Address',
                              style: SelfTextStyle.termAndConditionsYellow
                                  .copyWith(color: const Color(0xFFCBCBCB)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const UserDetailText(title: "Full Name"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'Rafatul Jabar',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle: AppBorderStyle.borderStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const UserDetailText(title: 'Email Address'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'jabar123@gmail.com',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle: AppBorderStyle.borderStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const UserDetailText(title: 'Phone'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      textInputType: TextInputType.number,
                      hintText: '+65 3233 2343',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle:  AppBorderStyle.borderStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const UserDetailText(title: 'Address'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'Type your home address',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle: AppBorderStyle.borderStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: const [
                        Text(
                          'Zip Code',
                          style: SelfTextStyle.uCartDetailHeading,
                        ),
                        SizedBox(width: 140),
                        Text(
                          'City',
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
                            borderStyle:  AppBorderStyle.borderStyle,
                          ),
                        ),
                        const SizedBox(width: 19),
                        Expanded(
                          child: AppTextField(
                            hintText: 'Enter here',
                            textStyle: SelfTextStyle.uCart,
                            borderStyle:  AppBorderStyle.borderStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const UserDetailText(title: 'Country'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: AppTextField(
                      hintText: 'Choose your country',
                      textStyle: SelfTextStyle.uCart,
                      borderStyle:  AppBorderStyle.borderStyle,
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
                            border:
                                Border.all(color: AppColors.green6A, width: 3),
                          ),
                          child: Center(
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: AppColors.green6A,
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
                          buttonText: 'NEXT',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PaymentMethodScreen()));
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
