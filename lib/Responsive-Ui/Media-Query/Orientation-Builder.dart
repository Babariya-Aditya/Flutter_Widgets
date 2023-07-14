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
          body: OrientationBuilder(
            builder: (context, orientation) {
              return GridView.builder(itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: orientation==Orientation.portrait?2:3, mainAxisSpacing: 10,crossAxisSpacing: 10,),
                itemBuilder: (context, index) {
                  return Container(color: Colors.blue,);
                },
              );
            },
          )),
    );
  }
}
