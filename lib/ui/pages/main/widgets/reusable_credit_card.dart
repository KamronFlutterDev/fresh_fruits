import 'package:flutter/material.dart';

import '../../../core/app_text_style.dart';


class CreditCard extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String cardTitle;

  const CreditCard({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.cardTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)))),
      onPressed: () {},
      child: Container(
        width: 194,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: borderColor)),
        child: Text(
          cardTitle,
          style: SelfTextStyle.buttonStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
