import 'package:flutter/material.dart';
import 'package:light_control/Injectors.dart';
import 'package:light_control/MainScreen.dart';
import 'package:light_control/theme/DefaultTheme.dart';

void main() {
  Injectors.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme.themeDataDefault(),
      home: MainScreen(),
    );
  }
}
