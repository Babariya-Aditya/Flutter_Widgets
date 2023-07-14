import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FOURTH.dart';
import 'Notes-Details.dart';


class ThirdScreen extends StatefulWidget {


  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  List<Notes> list = [];
  @override
  Widget build(BuildContext context) {
    void insert(Notes notes,BuildContext context){
      setState(() {
        list.add(notes);
      });
    }
    return Scaffold(
      appBar: AppBar(title: Text("THIRD")),
      body: ListView.builder(itemCount: list.length,itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index].note),
          subtitle: Text(list[index].title),
        );
      },),
      floatingActionButton: FloatingActionButton(

        onPressed: ()  async {
          Notes n= await Navigator.push(context, MaterialPageRoute(builder: (context) => FourthScreen(),));
         insert(n, context);
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        elevation: 10,
      ),
    );
  }
}
