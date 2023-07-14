import 'package:flutter/material.dart';
import 'package:project1/Routes/PAges/Third-Page.dart';

import 'PAges/First -page.dart';
import 'PAges/Second-page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        "/":(context) => Firstpage(),
        "/SecondPage":(context) => Secondpage(),
        "/ThirdPage":(context) => Thirdpage(),

      },
    );
  }
}
