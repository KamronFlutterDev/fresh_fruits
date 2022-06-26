import 'package:flutter/material.dart';

import '../app_assets.dart';
import '../app_colors.dart';

class SelfDecorationStyle {
  static BoxDecoration categoriesContainerDec = BoxDecoration(
    // color: AppColors.inActiveCategoryCardColor,
    borderRadius: BorderRadius.circular(28.3204),
    boxShadow:  const [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(9, 0),
        blurRadius: 19,
        spreadRadius: 2,
      )
    ],

  );
}