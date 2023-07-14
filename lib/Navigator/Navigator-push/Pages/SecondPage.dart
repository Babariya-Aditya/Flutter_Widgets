import 'package:flutter/material.dart';
import 'package:project1/Navigator/Navigator-push/Pages/ThirdPage.dart';
import 'package:project1/Navigator/Navigator-push/Pages/User-Details.dart';

class Secondpage extends StatelessWidget {
  final _addressController=TextEditingController();
  List<User>? userList;
  Secondpage(List<User> userList);


  @override

  Widget build(BuildContext context) {
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
              name=${userList![0].name},
              email=${userList![0].email}
              age=${userList![0].age}
        
              '''),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {
                String _adress=_addressController.text.toString();




               // Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdpage(userList),));

              }, child: Text("NEXT"))

            ],
          ),
        ),
      ),
    );
  }
}
