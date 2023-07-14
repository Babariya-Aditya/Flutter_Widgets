import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Clones/NOTE/Screen/Second.dart';

import '../Modal/Notes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Notes> list = [];

  @override
  Widget build(BuildContext context) {
    void insert(Notes notes, BuildContext context) {
      setState(() {
        list.add(notes);
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,actions: [
        Icon(Icons.search,size: 28),
        SizedBox(width: 20,),
        Icon(Icons.mode_comment_rounded,size: 28),
        SizedBox(width: 10,),
      ],title: Text("Notes")),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("All Notes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25)),
                  ),
                  Icon(Icons.arrow_drop_down_sharp,size: 30,color: Colors.grey,)
                ],
              ),
              Row(children: [
                SizedBox(width: 30,),
                Text("${list.length} notes",style: TextStyle(fontSize: 14,color: Colors.white),)
              ],),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                itemCount: list.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .8,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white, blurRadius: 1, spreadRadius: 1)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(list[index].title,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            PopupMenuButton(
                              onSelected: (value) {},
                              color: Colors.white,
                              iconSize: 28,
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(child: Text("Remove"), value: 0),
                                  PopupMenuItem(
                                    child: Text("Details"),
                                    value: 1,
                                  )
                                ];
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(''' ${list[index].note}
                  ''',
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Notes n = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
          insert(n, context);
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: Colors.grey,
        focusColor: Colors.red,
        elevation: 10,
      ),
    );
  }
}
