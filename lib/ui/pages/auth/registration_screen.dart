import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits/ui/core/app_assets.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_button.dart';
import 'package:fresh_fruits/ui/core/widgets/app_text_field.dart';

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
                  child: SvgPicture.asset(
                    SvgAssets.icBack,
                    fit: BoxFit.scaleDown,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Transform.translate(
                offset: const Offset(0, -20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
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
                                      Text("Congratulations"),
                                      SvgPicture.asset(
                                        SvgAssets.registrationSuccess,
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
