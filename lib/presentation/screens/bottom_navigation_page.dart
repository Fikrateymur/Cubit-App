import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/presentation/screens/cart_page.dart';
import 'package:cubit_example/presentation/screens/category.dart';
import 'package:cubit_example/presentation/screens/favorite_page.dart';
import 'package:cubit_example/presentation/screens/home_page.dart';
import 'package:cubit_example/presentation/screens/settings_page.dart';

import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Category(),
    FavoritePage(),
    CartPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: AppColors.iconDefaultColor,
              ),
              activeIcon: Icon(
                Icons.home_outlined,
                color: AppColors.iconSelectedtColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppPictures.iconShirtPicture2,
                scale: 1.5,
              ),
              activeIcon: Image.asset(
                AppPictures.iconShirtPicture,
                scale: 1.5,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppPictures.iconHeart,
                scale: 1.5,
              ),
              activeIcon: Image.asset(
                AppPictures.iconSelectedHeart,
                scale: 1.5,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppPictures.iconMarketCard,
                scale: 1.5,
              ),
              activeIcon: Image.asset(
                AppPictures.iconSelectedMarketCard,
                scale: 1.5,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: AppColors.iconDefaultColor,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: AppColors.iconSelectedtColor,
              ),
              label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
