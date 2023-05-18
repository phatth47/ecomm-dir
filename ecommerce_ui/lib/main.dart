import 'package:ecommerce_ui/routes/routes.dart';
import 'package:ecommerce_ui/partial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

@pragma('vm:entry-point')
void partialScreenEntryPoint() => runApp(PartialScreen());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primaryColor: const Color(0xFF5956E9),
        primaryColorLight: Colors.white,
        fontFamily: 'Raleway',
      ),
      initialRoute: 'splash',
      routes: getApplicationRoutes(),
    );
  }
}
/*
AppDrawer(child: InicioPage())
 */