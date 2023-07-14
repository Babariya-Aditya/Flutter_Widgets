
import 'package:flutter/material.dart';

import 'Screens/FOURTH.dart';
import 'Screens/THIRD.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
     initialRoute: '/',
      routes: {
    '/':(context) => ThirdScreen(),
    '/Fourth':(context) => FourthScreen()
      },

    );
  }
}