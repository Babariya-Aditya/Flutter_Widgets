import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(floatingActionButton: FloatingActionButton(onPressed: (

          ) {


      },child: Icon(Icons.add,size: 25),),
        appBar: AppBar(
          title: Text('Material App Bar'),

        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
