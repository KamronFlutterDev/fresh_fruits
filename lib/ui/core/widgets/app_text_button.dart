import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class AppTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  final Color? buttonColor;
  final TextStyle? buttonTextStyle;
  final Border? buttonBorderStyle;

  const AppTextButton({
    Key? key,
    this.buttonBorderStyle,
    this.buttonTextStyle,
    this.buttonColor,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)))),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: buttonColor ?? const Color(0xFFFEC54B),
          borderRadius: BorderRadius.circular(30),
          border: buttonBorderStyle,
        ),
        child: Text(
          buttonText,
          style: buttonTextStyle ?? SelfTextStyle.buttonStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
