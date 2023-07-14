import 'package:flutter/material.dart';
import 'package:project1/Clones/Amazon/Details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Container getText(String s, {double? size, Color? color,double? h,double? w,}) {
    return Container(

      height: h,
      width: w,
      child: Text(
        s,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: color,

        ),
      ),
    );
  }

  Container geticon(
    IconData data,
    Color color,
  ) {
    return Container(
      child: Icon(
        data,
        color: color,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 390,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Colors.greenAccent,
                              Colors.green.shade200,
                              Colors.greenAccent,
                            ],
                          )),
                        ),
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Positioned(
                            bottom: 25,
                            left: 5,
                            child: geticon(Icons.arrow_back, Colors.black)),
                        Positioned(
                            bottom: 25,
                            left: 55,
                            child: geticon(Icons.search, Colors.black)),
                        Positioned(
                            bottom: 25,
                            right: 55,
                            child: geticon(Icons.photo_camera, Colors.grey)),
                        Positioned(
                            bottom: 25,
                            right: 5,
                            child: geticon(Icons.mic_sharp, Colors.black))
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 1),
                          height: 55,
                          width: 390,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Colors.green.shade200,
                              Colors.greenAccent,
                            ],
                          )),
                        ),
                        Positioned(
                            left: 0,
                            child: geticon(
                                Icons.location_on_outlined, Colors.black)),
                        Positioned(
                          left: 35,
                          child: Container(
                            child: Text("Deliver to Aditya - Gondal 360311",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 50,
                          width: 390,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(spreadRadius: 1, blurRadius: 3),
                          ]),
                        ),
                        Positioned(
                          left: 35,
                          child: Container(
                            child: Text("prime",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                          ),
                        ),
                        Positioned(
                            left: 5,
                            child: geticon(Icons.done_rounded, Colors.amber)),
                        Positioned(
                            left: 80,
                            child: geticon(Icons.radio_button_checked_sharp,
                                Colors.grey)),
                        Positioned(
                          left: 130,
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              "Customer Reviews",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 105,
                            child: geticon(Icons.arrow_drop_down_outlined,
                                Colors.black)),
                        Positioned(
                            right: 10,
                            child: Text(
                              "Filter (1) ^",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),


                Column(
                  children: [
                    ListView.builder(shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 1 ,itemBuilder: (context, index) {

                      },),
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
