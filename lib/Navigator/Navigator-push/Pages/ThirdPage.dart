import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/SecondPage.dart';
import 'package:project1/Navigator/Navigator-push/Pages/User-Details.dart';

class Thirdpage extends StatefulWidget {
  User user;

  Thirdpage(this.user);

  @override
  State<Thirdpage> createState() => _ThirdpageState(user);

}

class _ThirdpageState extends State<Thirdpage> {
  User user;

  _ThirdpageState(this.user);
  Secondpage? secondPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('''
                name=${user.name},
                email=${user.email}
                age=${widget.user.age}
                Adress=${widget.user.address}
            
            '''),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("GO BACK"))
          ],
        ),
      ),
    );
  }
}
