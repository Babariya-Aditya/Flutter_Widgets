import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container getcontainer(Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      height: 100,
      width: 100,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView(
            children: [
              getcontainer(Colors.blue),
              getcontainer(Colors.blue.shade800),
              getcontainer(Colors.blue.shade700),
              getcontainer(Colors.blue.shade500),
              getcontainer(Colors.blue.shade800),
              getcontainer(Colors.blue),
              getcontainer(Colors.blue.shade800),
              getcontainer(Colors.blue.shade700),
              getcontainer(Colors.blue.shade500),
              getcontainer(Colors.blue.shade800),


            ],
          )
      ),
    );
  }
}
