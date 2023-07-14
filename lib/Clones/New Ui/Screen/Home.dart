import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          color: Color(0xff00AF80),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 165),

                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
                    child:Column(children: [
                      Icon(Icons.person,size: 30),
                      Text("Aditya Babariya",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Icon(Icons.location_on_outlined),
                        Text("Rajkot",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                      ],),
                      SizedBox(height:30,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                        Column(children: [
                          Text("29",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Posts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],),
                        Column(children: [
                          Text("553",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Follower",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],),
                        Column(children: [
                          Text("1411",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Following",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],)
                      ],)
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Icon(Icons.search,size: 30,)
                      ],
                    ),
                    height: 140,
                    width: double.infinity,

                    decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
                  ),

                ],
              ),

            ],
          )
        ),
      ),
    );
  }
}
