import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(
         backgroundColor: Colors.green,

      ),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        title: Text("My First App"),
      ),
      body: Center(
        child: Text(
          "Welcome Aditya",

          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.black,
            fontSize: 30,
          ),

        ),
      ),
    );
  }
}
