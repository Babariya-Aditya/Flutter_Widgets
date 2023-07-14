import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/SecondPage.dart';

import '../../Navigator/Navigator-push/Pages/User-Details.dart';

class Firstpage extends StatelessWidget {
  User? user;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment(00, 01), colors: [
                Color(0xff392d69),  Color(0xffb57bee),
            ])),
            child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
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
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
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
                    hintText: "Enter Age",
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
                 backgroundColor: Color(0xff663177)
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
                    Navigator.pushNamed(context, "/SecondPage", arguments: user);
                  },
                  child: Text("NEXT"))
            ],
        ),
      ),
          )),
    );
  }
}
