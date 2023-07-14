import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;

  void Countplus() {
    count++;
    print(count);
  }

  void Countminus() {
    count--;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Countminus();
                });
              },
              child: Text(
                "  -  ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: 40,
          ),
          Text(
            "$count",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 40,
          ),
          ElevatedButton(
              onPressed: () {

                setState(() {
                  Countplus();
                });
              },
              child: Text(
                "  +  ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
        ],
      )),
    );
  }
}
