import 'package:flutter/material.dart';
import 'package:project1/Wrap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Orientations(),

    );
  }
}
class Orientations extends StatelessWidget {
  const Orientations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    Orientation orientation=MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        child: orientation==Orientation.portrait? Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height*.2,
                width:  size.height*.4,
                color: Colors.amber,
              ),
              Container(

                height: size.height*.2,
                width:  size.height*.4,



                color: Colors.red,
              ),
            ],
          ),
        ): Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.width*.2,
                width:  size.width*.4,
                color: Colors.amber,
              ),
              Container(
                height: size.width*.2,
                width:  size.width*.4,
                color: Colors.red,
              ),
            ],
          ),
        ),
      )
    );
  }
}

