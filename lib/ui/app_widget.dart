import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/pages/categories/categories_screen.dart';
import 'package:fresh_fruits/UI/pages/home/home_screen.dart';
import 'package:fresh_fruits/UI/pages/home/screens_navigation_helper.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScreensNavigationHelper(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        canvasColor: AppColors.white,
      ),
    );
  }
}
