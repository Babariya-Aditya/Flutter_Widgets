import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Border_Effects extends StatelessWidget {
  const Border_Effects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      body: Center(
        child: Container(

          padding: EdgeInsets.all(3),

          // color: Colors.deepPurple,

          // color: Colors.green.shade300,
          decoration:  BoxDecoration(
            border: Border.all(color: Colors.white,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignCenter,width: 4),
              gradient: LinearGradient(
                  colors: [Colors.red.shade400, Colors.deepPurple, Colors.blueAccent]
              ),



              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white10,
                  blurRadius: 50,
                )
              ],
//borderRadius: BorderRadius.all(Radius.circular(20)),
              borderRadius:
                  BorderRadius.all(Radius.circular(25))),

          child: Center(
            child: Text(
              "Aditya",
              style: TextStyle(
                  fontSize: 50,
                  wordSpacing: 5,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 4,
                  foreground: Paint()
                    ..color = Colors.red
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5,
                  shadows: [
                    Shadow(
                        color: Colors.pink,
                        blurRadius: 55,
                        offset: Offset(5, 7))
                  ]),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
