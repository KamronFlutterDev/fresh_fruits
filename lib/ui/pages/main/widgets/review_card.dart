import 'package:flutter/material.dart';


import '../../../core/app_colors.dart';
import '../../../core/app_text_style.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 216,
      width: 319,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.orange),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          onChanged: (string) {},
          minLines: 1,
          maxLines: 20,
          keyboardType: TextInputType.multiline,
          style: SelfTextStyle.hintStyle,
          textInputAction: TextInputAction.newline,
          decoration: InputDecoration(
              hoverColor: AppColors.white,
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: AppColors.orange)),
              hintText: 'Write your Review'),
        ),
      ),
    );
  }
}
