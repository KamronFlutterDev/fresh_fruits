import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreensNavigationHelper extends StatefulWidget {
  const  ScreensNavigationHelper({Key? key}) : super(key: key);

  @override
  State< ScreensNavigationHelper> createState() => _ScreensNavigationHelperState();
}

class _ScreensNavigationHelperState extends State< ScreensNavigationHelper> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home ', style: optionStyle),
    Text('Index 1: Categories ', style: optionStyle),
    Text('Index 2: Shop', style: optionStyle),
    Text('Index 4: Favorites', style: optionStyle),
    Text('Index 3: Account ', style: optionStyle),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: Image(image: AssetImage('images/Vector.png'),),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // icon: Image(image: AssetImage('images/Vector (1).png'),),
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
              backgroundImage: AssetImage('images/placeholder.png'),
              radius: 23.81,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFE67F1E),
        onTap: onItemTaped,
      ),
    );
  }
}
