import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Routes/Named-Routes-Func/Screens/FIRST.dart';
import 'package:project1/Routes/Named-Routes-Func/Screens/Notes-Details.dart';
import 'package:project1/Routes/Named-Routes-Func/Screens/THIRD.dart';

import 'SECOND.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {



  var titleCOntroller=TextEditingController();
  var notesCOntroller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("NOTES")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
          child: Column(
            children: [
              TextField(
                controller: titleCOntroller,
                maxLines: 2,
                maxLength: 30,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Ttitle: ",
                  hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline),

                  border: UnderlineInputBorder(borderRadius: BorderRadius.circular(2),),



                ),
              ),
              TextField(
                controller: notesCOntroller,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                maxLength: 500,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  hintText: "NOTES... ",
                  hintStyle: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),

                  border: InputBorder.none,



                ),
              ),
              ElevatedButton(clipBehavior: Clip.none,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    String title=titleCOntroller.text.toString().trim();
                    String note= notesCOntroller.text.toString().trim();

                    var N=Notes(title: title, note: note);

                //    insert(N, context);
                    Navigator.pop(context,N);


                  },
                  child: Text("SAVE",style: TextStyle(fontSize: 18),))
            ],
          ),
        ),

      ),

    );

  }

}
