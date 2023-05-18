import 'package:ecommerce_ui/screens/checkout.dart';
import 'package:ecommerce_ui/screens/homescreen.dart';
import 'package:ecommerce_ui/screens/loginscreen.dart';
import 'package:ecommerce_ui/screens/no_favorites.dart';
import 'package:ecommerce_ui/screens/searchscreen.dart';
import 'package:ecommerce_ui/screens/splashscreen.dart';
import 'package:ecommerce_ui/root_page.dart';
import 'package:ecommerce_ui/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    // '/': (BuildContext context) => AppDrawer(child: Home()),
    '/': (BuildContext context) => RootPage(),
    'splash': (BuildContext contex) => Splash(),
    'auth': (BuildContext contex) => Login(),
    'favorites': (BuildContext contex) => NoFavorites(),
    'checkout': (BuildContext contex) => Checkout(),
    'busqueda': (BuildContext contex) => SearchScreen(),
  };
}
