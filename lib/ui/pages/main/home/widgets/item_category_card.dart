import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/ui/pages/main/categories/categories_screen.dart';

import '../../../../core/app_colors.dart';

class ItemCategoryCard extends StatelessWidget {
  final String itemImage;

  const ItemCategoryCard({
    Key? key,
    required this.itemImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CategoriesScreen()));
      },
      padding: const EdgeInsets.only(left: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        height: 73,
        width: 93,
        child: Center(child: SvgPicture.asset(itemImage)),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(9, 0),
                blurRadius: 19.0,
                spreadRadius: 2.0,
              )
            ]),
      ),
    );
  }
}
