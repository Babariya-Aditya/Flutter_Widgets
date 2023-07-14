import 'package:flutter/material.dart';
import 'package:project1/pages/ColoumnandRow.dart';

class Sidedrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(

          child: Column(
            children: [
              Icon(Icons.menu_open_sharp),
              Container(

                alignment: Alignment.center,
                height: 300,
                  width: double.infinity,
                  color: Colors.deepPurple,
                  
                  child:Text("hello",style: TextStyle(fontSize: 50),),
              )

            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
