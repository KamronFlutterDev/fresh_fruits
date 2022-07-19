import 'package:flutter/material.dart';
import '../../../core/app_text_style.dart';

class UserDetailText extends StatelessWidget {
  final String title;

  const UserDetailText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Text(
        title,
        style: SelfTextStyle.uCartDetailHeading,
      ),
    );
  }
}
