import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/SecondPage.dart';

import 'User-Details.dart';
class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  User? user;

List<User> UserList=[];

void insert(User user,BuildContext context){
  setState(() {
    UserList.add(user);
  });
}

  final _nameController=TextEditingController();

  final _emailController=TextEditingController();

  final _ageController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  hintText: "Enter Name", labelStyle: TextStyle(fontSize: 18),),

            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Enter Email", labelStyle: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                  hintText: "Enter Age", labelStyle: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: () {
              String _name=_nameController.text.toString();
              String _email=_emailController.text.toString();
              int _age=(_ageController.text.isEmpty)?0:int.parse(_ageController.text.toString());
              var u=User(name: _name,email: _email,age: _age,);
              insert(u, context);

              Navigator.push(context,MaterialPageRoute(builder: (context) => Secondpage(UserList)));

            }, child: Text("NEXT"))
          ],
        ),
      )),
    );
  }
}
