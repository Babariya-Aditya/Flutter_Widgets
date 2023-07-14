import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Person.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  void BottomDialougeBox(BuildContext context,Person? person) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(

          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, MediaQuery.of(context).viewInsets.bottom+24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(

                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: "Enter Name",
                    labelStyle: TextStyle(fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 3,
                            strokeAlign: 15,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blueGrey,
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
                  height: 20,
                ),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter Email",
                    labelStyle: TextStyle(fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 3,
                            strokeAlign: 15,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blueGrey,
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
                ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text.toString().trim();
                      String email = _emailController.text.toString().trim();


                      int id = person == null ? Random().nextInt(999) : person.id;
                      var p = Person(id: id, email: email, name: name);

                      if(person==null){
                        insertPerson(p, context);
                      }
                      else{
                        updatePerson(p, context);
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      person !=null?"UPDATE":"INSERT",
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ),
        );

      },
      isScrollControlled: true,
    );
  }

  var PersonList=<Person>[];



  void insertPerson(Person person, BuildContext context) {
    setState(() {
      PersonList.add(person);
    });
  }
  void updatePerson(Person person, BuildContext context){
    setState(() {
      var index= PersonList.indexWhere((element) => element.id==person.id);
      PersonList[index]=person;


    });
  }
  void remove(Person person, BuildContext context){
   setState(() {
     PersonList.removeWhere((element) => element.id==person.id);
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "USER",
            textAlign: TextAlign.center,
          )),
          backgroundColor: Colors.black),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment(00, 01), colors: [
          Color(0xff392d69),
          Color(0xffb57bee),
        ])),
        child: ListView.builder(itemCount: PersonList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                BottomDialougeBox(context, PersonList[index]);
              },
              leading: CircleAvatar(
                radius: 25,
                child: Text(PersonList[index].name.isNotEmpty? PersonList[index].name[0].toUpperCase():"X"),

              ),
              trailing: IconButton(onPressed: () {
                remove(PersonList[index], context);
              },
              icon: Icon(Icons.delete) ,),
              title: Text(PersonList[index].name,style: TextStyle(fontSize: 18)),
              subtitle: Text(PersonList[index].email,style: TextStyle(fontSize: 18)),

            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            BottomDialougeBox(context,null);
          },
          child: Icon(Icons.add)),
    );
  }
}




