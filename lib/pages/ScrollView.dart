import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scroll_view extends StatelessWidget {
  const Scroll_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 400,
                        child: Image.asset(
                          "assets/images/2.png",
                          height: 200,
                          width: 300,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text("Rose",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red)),
                      ),
                      Container(
                        height: 200,
                        width: 400,
                        child: Image.asset(
                          "assets/images/4.png",
                          height: 200,
                          width: 300,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text("Rose",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.asset(
                    "assets/images/1.png",
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 30,
                  child: Text("Jasmine",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple)),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.asset(
                    "assets/images/2.png",
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(
                  height: 30,
                  child: Text("Rose",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red)),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.asset(
                    "assets/images/3.png",
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                  color: Colors.red,
                ),
                SizedBox(
                  height: 30,
                  child: Text("Blossom",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red)),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.asset(
                    "assets/images/4.png",
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(
                  height: 30,
                  child: Text("sunflower",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.pink)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
