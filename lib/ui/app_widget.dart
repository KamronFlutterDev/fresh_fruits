import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/pages/auth/sign_in_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        canvasColor: AppColors.white,
      ),
    );
  }
}
