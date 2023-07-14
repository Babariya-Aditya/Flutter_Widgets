import 'package:flutter/material.dart';
import 'package:project1/Navigation-Bars/Page-View/Screens/HomeScreen.dart';
import 'package:project1/Navigation-Bars/Page-View/Screens/NotificationScreen.dart';
import 'package:project1/Navigation-Bars/Page-View/Screens/ProfileScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pageController=PageController(initialPage: 0);

  int intial=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PAge View'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
          });
        },child: Icon(Icons.navigate_next)),
        body: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,

          children: const [
            HomeScreen(),
            NotificationScreen(),
            ProfileScreen()

          ],
        )
      ),
    );
  }
}
