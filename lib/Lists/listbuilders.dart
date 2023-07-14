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

        body: ListView.builder(itemCount: 15,itemBuilder: (context, index) {

          return ListTile(
            leading: Icon(Icons.person),
            title: Text("person $index"),
            trailing: Icon(Icons.phone),

          );
        },)
      ),
    );
  }
}
