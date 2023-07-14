import 'package:flutter/material.dart';
import 'package:project1/pages/Border_Effects.dart';
import 'package:project1/pages/ColoumnROw.dart';
import 'package:project1/pages/ColoumnandRow.dart';
import 'package:project1/pages/GeeksQuestion.dart';
import 'package:project1/pages/HomePage.dart';
import 'package:project1/pages/LoginPage.dart';
import 'package:project1/pages/ScrollView.dart';
import 'package:project1/pages/Stacks.dart';
import 'package:project1/pages/sidedrawer.dart';
import 'package:project1/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter APP",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {

        // "/login":(context)=>LoginPage()    // simple type now give "/login" as String input in routes class and agreegaTE IT
        "/": (context) => Coloums(),
        MyRoutes.homeroutes: (context) => Homepage(),
        // Agreegation use of Myroutes.String
        MyRoutes.loginroutes: (context) => LoginPage()
      },
    );
  }
}
