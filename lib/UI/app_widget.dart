import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/home_pages/home_screen.dart';
import 'package:fresh_fruits/UI/home_pages/screens_navigation_helper.dart';
import 'package:fresh_fruits/UI/registration_and_sign_process/registration.dart';
import 'package:fresh_fruits/UI/registration_and_sign_process/sign_in_screen.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreensNavigationHelper(),
    );
  }
}
