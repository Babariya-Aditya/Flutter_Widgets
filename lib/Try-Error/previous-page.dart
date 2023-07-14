// Previous screen

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstScreen (),

    );
  }
}

class PreviousScreen extends StatelessWidget {
  final List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: TextEditingController(),
              onChanged: (value) {
                list.add(value);
              },
            ),
            TextField(
              controller: TextEditingController(),
              onChanged: (value) {
                list.add(value);
              },
            ),
            TextField(
              controller: TextEditingController(),
              onChanged: (value) {
                list.add(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, list);
              },
              child: Text('Go back to first screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// First screen
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();

    if (ModalRoute.of(context)?.settings.arguments != null) {
      list = ModalRoute.of(context)?.settings.arguments as List<String>;
    }

    // This line was moved to the initState() method to resolve the error.
    dependOnInheritedWidgetOfExactType<_ModalScopeStatus>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Text(list[index]);
        },
      ),
    );
  }
}