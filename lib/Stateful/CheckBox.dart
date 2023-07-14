import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Widget',
      home: CheckBoxExample(),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Widget'),
      ),
      body: Center(
        child: Container(
          child: CheckboxListTile(
            value: isChecked,
            onChanged: (value) {
              print(value);
              setState(() {
                isChecked = value!;
              });
            },
            title: Text('Terms and Conditions'),
          ),
        ),
      ),
    );
  }
}
