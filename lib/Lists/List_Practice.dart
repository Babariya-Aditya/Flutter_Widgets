import 'package:flutter/material.dart';

import 'User_ Details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Listt(),
    );
  }
}

class Listt extends StatefulWidget {



  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  List<User> userlist=[];
  @override
  void initState(){
    super.initState();
    userlist.add(User("1", "Aditya"));
    userlist.add(User("2", "Aditya"));
    userlist.add(User("3", "Aditya"));
    userlist.add(User("4", "Aditya"));


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(itemCount: userlist.length,itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: ListTile(tileColor: Colors.amber,
title: Center(child: Text(userlist[index].name)),
            subtitle: Center(child: Text(userlist[index].id)),
            leading: Icon(Icons.accessibility_outlined),
            trailing: Checkbox(value: userlist[index].ischecked, onChanged: (value) {
              setState(() {
                userlist[index].ischecked=value!;
                userlist.removeWhere((element) => element.ischecked==true);
              });

            },
            ),


          ),
        );
      },)
    );
  }
}
