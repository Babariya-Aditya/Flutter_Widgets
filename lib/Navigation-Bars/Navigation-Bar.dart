import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ListTile getTile(IconData iconData,String s){
    return ListTile(
      focusColor: Colors.green,
      leading: Icon(iconData,size: 28,color: Colors.black),
      title: Text(s,style: TextStyle(fontSize: 22)),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(

        drawer: Container(
          width: 280,
          child: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/1.png",
                          ),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.black,
                            child: Text("A",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Aditya Babariya",style: TextStyle(fontSize: 24,color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("adityababariya@gmail.com",style: TextStyle(fontSize: 18,color: Colors.white),),
                        ],
                      ),

                    ],
                  ),
                ),
                getTile(Icons.folder, "My Files"),
                getTile(Icons.share, "Share"),
                getTile(Icons.star, "Stared"),
                getTile(Icons.upload_outlined, "Upload"),
                getTile(Icons.settings, "Settings"),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GNav(
                backgroundColor: Colors.black,
                color: Colors.white,
                tabBackgroundColor: Colors.grey.shade800,
                gap: 10,
                activeColor: Colors.white,
                tabs: [
                  GButton(icon: Icons.home, text: "Home"),
                  GButton(icon: Icons.favorite, text: "Like"),
                  GButton(icon: Icons.search, text: "Search"),
                  GButton(icon: Icons.settings, text: "Settings"),
                ]),
          ),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
