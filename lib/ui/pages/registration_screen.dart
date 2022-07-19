import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/UI/pages/auth/sign_in_screen.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_field.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
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
                    )),
              ],
            ),
            Expanded(
              child: Transform.translate(
                offset: const Offset(0, -20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 24,
                    ),
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Create your account',
                          style: SelfTextStyle.authTitle,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: const [
                          Expanded(
                            child: AppTextField(hintText: 'Your surname'),
                          ),
                          SizedBox(width: 16),
                          Expanded(child: AppTextField(hintText: 'Your name')),
                        ],
                      ),
                      const AppTextField(hintText: 'Your email'),
                      const AppTextField(
                        hintText: 'Your password',
                        inputAction: TextInputAction.done,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'By tapping Sign up you accept all ',
                            style: SelfTextStyle.termAndConditions,
                            children: [
                              TextSpan(
                                text: ' terms',
                                style: SelfTextStyle.termAndConditionsYellow,
                              ),
                              TextSpan(
                                text: ' and',
                              ),
                              TextSpan(
                                text: ' conditions',
                                style: SelfTextStyle.termAndConditionsYellow,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      AppTextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 36,
                                    vertical: 16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Congratulations",
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.orange,
                                          height: 26.14 / 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                      const Text(
                                        'Name and Surname',
                                        style: TextStyle(
                                          fontSize: 12.92,
                                          color: AppColors.purple,
                                          height: 14.08 / 12.92,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        SvgAssets.registrationSuccess,
                                      ),
                                      AppTextButton(
                                        buttonText: 'SIGN IN',
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        buttonText: 'CREATE AN ACCOUNT',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
