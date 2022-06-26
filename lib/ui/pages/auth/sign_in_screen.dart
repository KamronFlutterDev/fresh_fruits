import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_field.dart';
import 'package:fresh_fruits/ui/pages/main/home/home_screen.dart';

import '../../core/app_text_style.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Image.asset(
                  ImageAssets.authBackground,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 64,
                left: 16,
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.icBack,
                    fit: BoxFit.scaleDown,
                    color: AppColors.lightGrey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Sign in',
                            style: SelfTextStyle.signInButtonTextStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const AppTextField(
                      hintText: 'Your email',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const AppTextField(
                      hintText: 'Your password',
                    ),
                    const SizedBox(height: 15),
                    AppTextButton(
                      buttonText: 'SIGN IN',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
