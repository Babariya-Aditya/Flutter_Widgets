import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Data.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  Data? data;
  var DataList = <Data>[];
  var ColorList = [
    Colors.yellowAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.tealAccent,Colors.amberAccent,
    Colors.yellowAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.tealAccent,Colors.amberAccent,
    Colors.yellowAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.tealAccent,Colors.amberAccent,
  ];
  var col=Random().nextInt(6);

  void insertData(BuildContext context, Data data) {
    setState(() {
      DataList.add(data);
    });
  }
  void updateData(BuildContext context, Data data){
    setState(() {
      var indexx=DataList.indexWhere((element) => element.id==data.id);
      DataList[indexx]=data;
      Navigator.pop(context);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BottomSheets(context,null);
        },
        backgroundColor: Colors.yellow, elevation: 10,
        child: Icon(Icons.add, size: 25,),

      ),
      body: GridView.builder(itemCount: DataList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              BottomSheets(context, DataList[index]);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorList[index],),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Text(DataList[index].name, style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [

                        Text(DataList[index].email, style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },),
    );
  }

  void BottomSheets(BuildContext context,Data? data) {
    var _nameController = TextEditingController();
    var _emailController = TextEditingController();
    showModalBottomSheet(context: context, builder: (context) {
      return Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(begin: Alignment(00, 01), colors: [
                      Color(0xffee0979), Color(0xffff6a00),
                    ])),
                child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(text: TextSpan(text: "Log",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: [
                              TextSpan(text: "In",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ))
                            ]),),

                        TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            hintText: "Enter UserName",
                            hintStyle: TextStyle(
                                fontSize: 16, color: Colors.white),
                            labelStyle: TextStyle(
                                fontSize: 18, color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,

                                    width: 3,
                                    strokeAlign: 15,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 3,
                                  strokeAlign: 15,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(
                                fontSize: 16, color: Colors.white),
                            labelStyle: TextStyle(
                                fontSize: 28, color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                    strokeAlign: 15,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 3,
                                  strokeAlign: 15,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(onPressed: () {
                          String name = _nameController.text.toString().trim();
                          String email = _emailController.text.toString()
                              .trim();
                          int id = Random().nextInt(999);
                          var d = Data(name: name, email: email, id: id);

                          if(data==null){
                            insertData(context, d);
                          }
                          else{
                            updateData(context, d);
                          }
                          Navigator.pop(context);
                        }, child:Text(data==null?
                        "Insert":"Update", style: TextStyle(fontSize: 30)) ,







                        ),
                          SizedBox(
                          height: 170,
                        ),
                      ],
                    )
                ))
          ]
      );
    },);
  }
}
