import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coloumn_Row extends StatelessWidget {
  const Coloumn_Row({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InkWell(
          mouseCursor: SystemMouseCursors.zoomIn,
          child: Container(
            height: 200,
            width: 300,
            color: Colors.blue,
            child: Column(
              children: [ Image.asset("assets/images/login.png",
                height: 40,
                alignment: Alignment.bottomLeft,),
                Text("Aditya"),
                Row(
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("hii"),
                        Text("how"),
                        Text("are"),
                        Text("you"),
                        ElevatedButton(onPressed: () {}, child: Text("click")),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
