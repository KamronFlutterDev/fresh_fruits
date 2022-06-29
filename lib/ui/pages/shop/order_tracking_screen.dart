import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_assets.dart';
import '../../core/app_text_style.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 2,
              child: SizedBox(
                height: 83,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 25,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(SvgAssets.icCancelOrange)),
                    ),
                    const Center(
                      child: Text(
                        'Thank You',
                        style: SelfTextStyle.mainStyleOfEachScreenTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image(image: AssetImage(ImageAssets.moto)),
            Text('data')
          ],
        ),
      ),
    );
  }
}
