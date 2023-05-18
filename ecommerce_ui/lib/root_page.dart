import 'package:ecommerce_ui/screens/homescreen.dart';
import 'package:ecommerce_ui/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Channel
const CHANNEL = "com.duytq.demointegrateflutter";
const PlatformChannel = const MethodChannel(CHANNEL);

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // Screen route
  static const HOME = "HOME";
  static const DETAIL = "DETAIL";
  static const DEFAULT = "DEFAULT";

  Widget currentScreen = Home();
  String title = "Default Page";

  @override
  void initState() {
    super.initState();
    PlatformChannel.setMethodCallHandler(_triggerFromNative);
  }

  Future<void> _triggerFromNative(MethodCall call) async {
    if (call.method == "notifyNavToFlutter") {
      print("VamoSs _ triggerFromNative notifyNavToFlutter");
      // Set transparent status bar
      // Not place in build method because it won't work from the second times navigate to Flutter
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ));
      switch (call.arguments) {
        case HOME:
          setState(() {
            title = "Home Page";
            currentScreen = Home();
          });
          break;
        case DETAIL:
          setState(() {
            title = "Detail Page";
            currentScreen = Container();
          });
          break;
        case DEFAULT:
          setState(() {
            title = "Default Page";
            currentScreen = Container();
          });
          break;
      }
    } else {
      print("Another call method");
    }
  }

  void _exitFlutter() {
    PlatformChannel.invokeMethod('exitFlutter');
  }

  @override
  Widget build(BuildContext context) {
    print("---Building RootPage-----");
    return currentScreen;
  }
}
