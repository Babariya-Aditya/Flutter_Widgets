import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/SecondPage.dart';
import 'package:project1/Navigator/Navigator-push/Pages/User-Details.dart';

class Thirdpage extends StatefulWidget {

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  Secondpage? secondPage;

  @override
  Widget build(BuildContext context) {
    User user=ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(title: Text("Third page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('''
                name=${user.name},
                email=${user.email}
                age=${user.age}
                Adress=$user.address}
            
            '''),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("GO BACK"))
          ],
        ),
      ),
    );
  }
}
