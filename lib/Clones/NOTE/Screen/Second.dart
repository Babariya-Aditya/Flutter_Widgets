import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modal/Notes.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  var titleCOntroller = TextEditingController();
  var notesCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(centerTitle: true,
          title: Text(
            "Add Notes",
          ),
          actions: [
            TextButton(
                onPressed: () {
                  String title = titleCOntroller.text.toString().trim();
                  String note = notesCOntroller.text.toString().trim();

                  var N = Notes(title: title, note: note);

                  //    insert(N, context);
                  Navigator.pop(context, N);
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ))
          ],
          backgroundColor: Colors.black),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 25, 4),
          child: Column(
            children: [
              TextField(
                controller: titleCOntroller,
                maxLines: 1,
                maxLength: 30,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Heading ",
                    hintStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                    counterStyle: TextStyle(color: Colors.white,fontSize: 14,),
                    border: InputBorder.none),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextField(
                controller: notesCOntroller,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                maxLength: 500,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                decoration: InputDecoration(
                  hintText: "NOTES... ",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
