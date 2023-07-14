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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello how are you hello how are you hello how are you hello how are you hello how are you"),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                value: 'A',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
              ),
              Radio(
                value: 'B',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
              ),
              Radio(
                value: 'C',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
              ),
              Radio(
                value: 'D',
                groupValue: MCQ,
                onChanged: (value) {
                  Getgender(value);
                },
              ),
            ],
          ),
          SizedBox(
            height: 50,
          )
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
