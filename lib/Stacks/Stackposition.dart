import 'package:flutter/material.dart';

void main() => runApp(Stackposition());

class Stackposition extends StatelessWidget {
  Container containers(Color color){
    return  Container(
        margin: EdgeInsets.only(bottom: 10,right: 10),
        height: 50,
        width: 50,
        color: color
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
          body: Center(
            child: Container(
              height: 300,
              width: 300,

              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      containers(Colors.cyan),
                      containers(Colors.lightBlue),

                    ],
                  ),
                  Column(
                    children: [
                      containers(Colors.deepOrange),

                      containers(Colors.lightBlue),

                    ],
                  ),
                  Column(
                    children: [
                      containers(Colors.deepOrange),

                      containers(Colors.lightBlue),

                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

}
