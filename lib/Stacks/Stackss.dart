import 'package:flutter/material.dart';
import 'package:project1/Stacks/Stackposition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,

          children: [

           Positioned(
             child: Container(
               height: 200,
               width: 410,
               color: Colors.deepPurple,
             ),
           ),

            Positioned(
              bottom: -75,

              child: Container(

                child: Positioned(
                  top: 10,
                    child: Icon(Icons.camera_alt_outlined,color: Colors.black,size: 50,)),
                decoration: BoxDecoration( color: Colors.blueAccent,shape: BoxShape.circle),
                height:150,
                width: 200,

              ),
            ),

            Positioned(
              bottom: -200,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 300,
                color: Colors.redAccent,
                child: Text("Hello Aditya",style: TextStyle(fontSize: 30),),
              ),
            ),
            Positioned(
              bottom: -50,
              right: 117,
              child: Container(
                decoration: BoxDecoration( color: Colors.grey,shape: BoxShape.circle),

                child: Icon(Icons.camera_alt_rounded,size: 30,color: Colors.black,),
              ),
            )
          ],
        )
      ),
    );
  }
}
