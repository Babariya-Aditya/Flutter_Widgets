import 'package:flutter/material.dart';
import 'package:project1/Clones/NOTE/Screen/First.dart';
import 'package:project1/Clones/NOTE/Screen/Second.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/':(context) => FirstPage(),
        '/Second':(context) => SecondPage()
      },

    );
  }
}