import 'package:flutter/material.dart';
import 'package:fresh_fruits/UI/pages/categories/categories_screen.dart';
import 'package:fresh_fruits/UI/pages/home/home_screen.dart';
import 'package:fresh_fruits/UI/pages/shop/shop_screen.dart';

class ScreensNavigationHelper extends StatefulWidget {
  const  ScreensNavigationHelper({Key? key}) : super(key: key);

  @override
  State< ScreensNavigationHelper> createState() => _ScreensNavigationHelperState();
}

class _ScreensNavigationHelperState extends State< ScreensNavigationHelper> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    FruitsCategoryScreen(),
    /// for index 4 and 5, put something so at least it doesn't look empty
    Text('Index 4: Favorites ', style: optionStyle),
    Text('Index 5: Account ', style: optionStyle),
  ];

  void onItemTaped(int item) {
    setState(() {
      _selectedIndex = item;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        /// TODO: replace the icons like in figma
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new_sharp),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined),
            label: 'Favorites',
          ),
          //TODO  provide image url for user account
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 23.81,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFE67F1E),
        onTap: onItemTaped,
      ),
    );
  }
}
