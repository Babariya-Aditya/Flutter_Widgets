import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.lightBlueAccent,
                  child: Text('Hello World'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.orange,
                  child: Text('Hello World'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
