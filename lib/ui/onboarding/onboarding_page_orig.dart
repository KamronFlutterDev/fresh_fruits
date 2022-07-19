import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/core/app_assets.dart';
import 'package:fresh_fruits/UI/onboarding/widget/resuasable_widgets.dart';
import 'package:fresh_fruits/UI/pages/auth/sign_in_screen.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/pages/auth/registration_screen.dart';

import '../core/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(_indicator(i == currentPage));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isActive ? 28 : 23,
      height: 6,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF12B76A) : const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  List<Widget> _buildButtonList() {
    List<Widget> list = [];
    list.add(currentPage == 2 ? button(true) : button(false));
    return list;
  }

  Widget button(bool isActive) {
    return isActive
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: AppTextButton(
                  buttonText: 'CREATE AN ACCOUNT',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                  },
                  buttonColor: AppColors.black,
                  buttonTextStyle: SelfTextStyle.buttonStyleWhite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: AppTextButton(
                  buttonColor: AppColors.white,
                  buttonText: 'LOGIN',
                  buttonBorderStyle: Border.all(color: AppColors.black, width: 2),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                ),
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: AppTextButton(
              buttonText: 'NEXT',
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
              buttonTextStyle: SelfTextStyle.buttonStyle,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                children: [
                  Column(
                    children: [
                      OnBoardingImageWid(
                          pageImage: ImageAssets.onBoardingPageOne),
                      const SizedBox(height: 54),
                      const OnBoardingTitleTwo(
                          title: 'Welcome to Fresh Fruits'),
                      const SizedBox(height: 24),
                      const Text(
                        'Grocery application',
                        style: SelfTextStyle.onBoardingPageText2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const OnBoardingTitleTwo(
                          title:
                              ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
                      const SizedBox(height: 21),
                    ],
                  ),
                  Column(
                    children: [
                      OnBoardingImageWid(
                          pageImage: ImageAssets.onBoardingPageOne),
                      const SizedBox(height: 54),
                      Container(
                        padding: const EdgeInsets.only(left: 55, right: 55),
                        child: const Text(
                          'We provide best quality Fruits to your family',
                          style: SelfTextStyle.onBoardingPageText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 14),
                      const Expanded(
                        child: OnBoardingTitleTwo(
                            title:
                                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
                      ),
                      const SizedBox(height: 21),
                    ],
                  ),
                  Column(
                    children: [
                      OnBoardingImageWid(
                          pageImage: ImageAssets.onBoardingPageThree),
                      const SizedBox(height: 54),
                      const OnBoardingTitle(
                          title:
                              'Fast and responsibily delivery by our courir'),
                      const SizedBox(height: 24),
                      const OnBoardingTitleTwo(
                          title:
                              ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                const SizedBox(height: 8),
                Column(
                  children: _buildButtonList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}