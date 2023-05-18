import 'dart:ffi';

import 'package:ecommerce_ui/screens/cart.dart';
import 'package:ecommerce_ui/screens/iniciopage.dart';
import 'package:ecommerce_ui/screens/no_favorites.dart';
import 'package:ecommerce_ui/screens/profile.dart';
import 'package:ecommerce_ui/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  @override
  int _currentIndex = 0;
  final List _children = [
    InicioPage(),
    InicioPage(),
    InicioPage(),
    InicioPage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff5956E9),
        iconSize: 32,
        elevation: 0.9,
        backgroundColor: const Color(0xfff2f2f2),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Color(0xff200E32)),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Color(0xff5956E9),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,
                  color: Color(0xff200E32)),
              backgroundColor: Color(0xfff2f2f2),
              label: 'Favourite',
              activeIcon: Icon(
                Icons.favorite,
                color: Color(0xff5956E9),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Color(0xff200E32)),
              backgroundColor: Color(0xfff2f2f2),
              label: 'Account',
              activeIcon: Icon(
                Icons.person,
                color: Color(0xff5956E9),
              )),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.shopping_cart_outlined, color: Color(0xff200E32)),
              backgroundColor: Color(0xfff2f2f2),
              label: 'Cart',
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Color(0xff5956E9),
              )),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    Widget page = Home();
    switch (index) {
      case 1:
        page = NoFavorites();
        break;
      case 2:
        page = Profile();
        break;
      case 3:
        page = Cart();
        break;
    }
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
    // setState(() {
    //   _currentIndex = index;
    //   print(index);
    // });
  }
}
