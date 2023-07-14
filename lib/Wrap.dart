
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container getcontainer(Color color) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reverse Number App',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter app"),
          ),
          body: Center(
            child: Container(
              height: 600,
              child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.spaceAround,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    getcontainer(Colors.blue),
                    getcontainer(Colors.blue.shade100),
                    getcontainer(Colors.blue.shade200),
                    getcontainer(Colors.blue.shade300),
                    getcontainer(Colors.blue.shade400),
                    getcontainer(Colors.blue),
                  ]),
            ),
          ),
        ));
  }
}

class Centre {
  Centre(Text text);
}
