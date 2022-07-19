import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/pages/main/main_page.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        canvasColor: AppColors.white,
      ),
    );
  }
}
