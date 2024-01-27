// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:kupa_app/pages/cart_page.dart';
import 'package:kupa_app/pages/home_page.dart';
import 'package:kupa_app/pages/menu_page.dart';
import 'package:kupa_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _pages = [HomePage(), MenuPage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            // icon: Icon(Boxicons.bx_home_alt),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bxs_food_menu),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bxs_cart_alt),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
