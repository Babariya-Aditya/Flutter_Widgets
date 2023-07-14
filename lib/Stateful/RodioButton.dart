import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Radiobutton(),
    );
  }
}

class Radiobutton extends StatefulWidget {

  const Radiobutton({Key? key}) : super(key: key);

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String? gender;
  void Getgender(String? value){
    setState(() {
      gender=value!;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button '),
      ),
      body: Center(
          child: Column(
            children: [
              RadioListTile(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    Getgender(value);
                  },
                  title: Text("Male")),
              RadioListTile(
                  value: "Female",
                  groupValue:gender,
                  onChanged: (value) {
                    Getgender(value);
                  },
                  title: Text("Female")),
              RadioListTile(
                  value: 'Others',
                  groupValue: gender,
                  onChanged: (value) {
                    Getgender(value);
                  },
                  title: Text("Others")),
            ],
          )),
    );
  }
}
