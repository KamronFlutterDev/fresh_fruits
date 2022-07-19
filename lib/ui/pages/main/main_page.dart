import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';
import 'package:fresh_fruits/ui/pages/main/categories/categories_screen.dart';
import 'package:fresh_fruits/ui/pages/main/home/home_screen.dart';
import 'package:fresh_fruits/ui/pages/main/shop/shop_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    FruitsCategoryScreen(),
    Text('Index 4: Favorites ', style: SelfTextStyle.optionStyle),
    Text('Index 5: Account ', style: SelfTextStyle.optionStyle),
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
