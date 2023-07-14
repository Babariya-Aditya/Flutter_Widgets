import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? mcq;
  void values(String value){
    setState(() {
      mcq=value!;
    });
  }

  Container getcontainer( ){
    return Container(
      height: 100,
      width: 250,
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: RadioListTile(value: 'A', groupValue: mcq, onChanged: (value) {
              values(value!);
            },),
          ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,itemBuilder: (context, index) => getcontainer(),),
            ],
          ),
        )
          
      ),
    );
  }
}
