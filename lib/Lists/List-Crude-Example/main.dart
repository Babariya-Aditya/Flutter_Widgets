import 'package:flutter/material.dart';
import 'package:project1/Lists/List-Crude-Example/Screen1.dart';
import 'package:project1/Lists/List-Crude-Example/Splash-Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}
