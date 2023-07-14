import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Routes/Named-Routes-Func/Screens/SECOND.dart';

import '../../../Navigator/Navigator-push/Pages/User-Details.dart';
import 'THIRD.dart';


class FirstScreen extends StatelessWidget {
  User? user;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
            children: [Container(
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
                            fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
                        children: [
                          TextSpan(text: "In",
                              style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,
                              ))
                        ]),),

                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        hintText: "Enter UserName",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelStyle: TextStyle(fontSize: 18, color: Colors.white),
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
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelStyle: TextStyle(fontSize: 28, color: Colors.white),
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
                      height: 20,
                    ),
                    TextField(
                      controller: _ageController,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelStyle: TextStyle(fontSize: 18, color: Colors.white),
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
                      height: 40,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                        onPressed: () {
                          String _name = _nameController.text.toString();
                          String _email = _emailController.text.toString();
                          int _age = (_ageController.text.isEmpty)
                              ? 0
                              : int.parse(_ageController.text.toString());
                          var user = User(
                            name: _name,
                            email: _email,
                            age: _age,
                          );
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ThirdScreen(),));
                        },
                        child: Text("Login", style: TextStyle(fontSize: 18),))
                  ],
                ),
              ),
            ),

            ]
          ),),
    );
  }
}
