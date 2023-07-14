import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Listt(),
    );
  }
}
class Listt extends StatelessWidget {

  List color=[Colors.amber,Colors.lightBlue,Colors.green,Colors.pink,Colors.blue,Colors.deepPurple];
  List digit=["1",
    "2","3","4","5","6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(itemCount:color.length,itemBuilder: (context, index) {
        return Container(
          height: 70,
          color: color[index],
          child: Center(child: Text(digit[index])),
        );
      },)
    );
  }
}
