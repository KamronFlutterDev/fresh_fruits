import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';

class AppBorderStyle {
  static InputBorder borderStyleRed = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: AppColors.red),
  );
  static InputBorder borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: AppColors.whiteCA),
  );
}
