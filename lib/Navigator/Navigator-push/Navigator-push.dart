import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/First-pager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Firstpage(),
    );
  }
}
