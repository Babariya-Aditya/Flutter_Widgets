import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var colore=[Colors.lightBlue,Colors.deepOrange,Colors.blueGrey,Colors.lightGreen,Colors.cyan,Colors.purple];
  var text="Hello";
  var Containercolor=Colors.black;
  Random random=Random();
  int i=0;
  void changecolor(){
   setState(() {
     i=random.nextInt(6);
     Containercolor=colore[i];
   });


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(text,style: TextStyle(color: Containercolor),),
              Container(height: 100,
              width: 100,
              color: Containercolor,),

              ElevatedButton(onPressed: () {
                changecolor();
              }, child: Text("Click Here")),


            ],
          )
        ),
      ),
    );
  }
}
