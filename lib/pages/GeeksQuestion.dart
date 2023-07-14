import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coloums extends StatelessWidget {
  const Coloums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 100,
                width: double.infinity,
                color: Colors.pink,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                width: double.infinity,
                color: Colors.deepPurple,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 10),
                height: 100,
                width: double.infinity,
                color: Colors.yellowAccent,
                child: Center(
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [

                            Text("hello    "),
                          ],
                        ),
                      ),
                      Column(

                        children: [Text("hii")],
                      )


                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                width: double.infinity,
                color: Colors.greenAccent,
              ),

            ],
          ),

        )
    );
  }
}
