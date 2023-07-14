import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(

        height: 500,
        width: 500,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),

              alignment: Alignment.bottomCenter,
              height: 300,
              width: 300,
              padding: EdgeInsets.only(bottom: 15),
              child: Text("App Developer",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
decoration: BoxDecoration( color: Colors.deepPurpleAccent,border: Border.all(width: 10,)),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(bottom: 15),
              height: 250,
              width: 250,
              color: Colors.blueAccent,
              alignment: Alignment.bottomCenter,
              child: Text(
                "Aditya Babariya",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Image.asset("assets/images/1.png",fit: BoxFit.fill,),
              
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color:Colors.greenAccent ,
            child: Icon(Icons.local_restaurant,size: 50,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
