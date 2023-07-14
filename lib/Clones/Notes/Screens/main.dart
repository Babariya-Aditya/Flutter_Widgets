import 'package:flutter/material.dart';
import 'package:project1/Clones/Notes/Screens/main-Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        "/":(context) => NotesScreen(),
      },
    );
  }
}
