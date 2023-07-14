import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String? MCQ;
  void Getgender(String? value){
    setState(() {
      MCQ=value!;
    });
  }
  Container getmcq(){
    return  Container(
      height: 300,
      width: 350,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello how are you"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
            title: Text("A"), value: "A",
              groupValue: MCQ,
              onChanged: (value) {
                Getgender(value);
              },
              ),
          RadioListTile(
              value: "B",
              groupValue:MCQ,
              onChanged: (value) {
                Getgender(value);
              },
              title: Text("B")),
          RadioListTile(
              value: 'C',
              groupValue: MCQ,
              onChanged: (value) {
                Getgender(value);
              },
              title: Text("C")),
          RadioListTile(
              value: 'D',
              groupValue: MCQ,
              onChanged: (value) {
                Getgender(value);
              },
              title: Text("D"))
        ],
      ),
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
        body: ListView.builder(itemCount: 4,itemBuilder: (context, index) {
          return getmcq();
        },)
    ),
    );
  }
}
