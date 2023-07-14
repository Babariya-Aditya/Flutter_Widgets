import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Nested()
    );
  }
}

class Nested extends StatelessWidget {
  const Nested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            children: [
              ListView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),itemCount: 1, itemBuilder: (context, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(children: [
                          Text("Top Rated",
                            style: TextStyle(color: Colors.black, fontSize: 18),),
                          Spacer(),
                          Text("View All",
                              style: TextStyle(color: Colors.blue, fontSize: 14)),
                        ],),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,

                          child: ListView.builder( itemCount: 5,physics: NeverScrollableScrollPhysics(),scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              child: Column(children: [
                                Image.asset("assets/fruits/3.png",height: 100,width: 100,),
                                Text('Fruit')
                              ]),
                            );
                          },),
                        )
                    ],
                  ),
                ),);
              },),
            ],
          ),
        ),

    );
  }
}
