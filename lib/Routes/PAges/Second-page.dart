import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/ThirdPage.dart';
import 'package:project1/Navigator/Navigator-push/Pages/User-Details.dart';

class Secondpage extends StatelessWidget {
  final _addressController=TextEditingController();



  @override

  Widget build(BuildContext context) {
    User user=ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: Center(

        child: Padding(

          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextField(
                  controller: _addressController,
                  decoration: InputDecoration(hintText: "Enter Address")),
              SizedBox(height: 20,),
              Text('''
              name=${user.name},
              email=${user.email}
              age=${user.age}
        
              '''),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {
                String _adress=_addressController.text.toString();
                user.address=_adress;

Navigator.pushNamed(context, "/ThirdPage",arguments: user);
              }, child: Text("NEXT"))

            ],
          ),
        ),
      ),
    );
  }
}
