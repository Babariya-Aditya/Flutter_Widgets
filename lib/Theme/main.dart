import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(

        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.amber,elevation: 20,),
          textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: Colors.black,
              cursorColor: Colors.black,
              selectionColor: Colors.amber),
          checkboxTheme: CheckboxThemeData(
              fillColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
              side: BorderSide(color: Colors.deepPurpleAccent)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
            ),
          ),
          splashColor: Colors.red,
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.lightBlue,
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white70,
            filled: true,
            labelStyle: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.red, width: 3)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          textTheme: TextTheme(
              labelLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.deepPurple),
              headlineLarge: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          //primarySwatch: Colors.deepOrange,
          colorScheme: ColorScheme.fromSwatch(
                  primarySwatch: Colors.yellow, accentColor: Colors.lightBlue)
              .copyWith(
            onPrimary: Colors.purple,
            primary: Colors.green,
            secondary: Colors.greenAccent,
            onSecondary: Colors.red,
          )),
      home: Home(),
    );
  }
}
