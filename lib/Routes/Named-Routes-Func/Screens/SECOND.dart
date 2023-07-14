import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Routes/Named-Routes-Func/Screens/FIRST.dart';



class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SECOND")),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                showDialog(context: context
                    , builder: (context) => AlertDialog(
                  title:Text("Logout?") ,
                  backgroundColor: Colors.white,
                  content: Text("Are You Sure"),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen(),));
                    },
                        child: Text("YES")),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
                    },
                        child: Text("No"))
                  ],
                ));
               // Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen(),));

              },  child:Text("Logout",style: TextStyle(fontSize: 20),) )
            ],
          ),
        ),
      ),
    );
  }
}
