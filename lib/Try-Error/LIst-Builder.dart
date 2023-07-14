import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Card getcards(){
    return Card(
      child: Container(
        height: 200,
        width: 150,

      ),
      margin: EdgeInsets.all(20),
      color: Colors.green,
      elevation: 10,
      shadowColor: Colors.black,
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
        body: ListView.builder( itemCount: 4,itemBuilder: (context, index) {
          return Wrap(children: [getcards()]);
        },)
      ),
    );
  }
}
