import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class AppTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  const AppTextButton({
    Key? key,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: const Color(0xFFFEC54B),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText,
          style: SelfTextStyle.buttonStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
