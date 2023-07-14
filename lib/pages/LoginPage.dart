import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        //for bottom over flow
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/login.png",
              alignment: Alignment.center,
              fit: BoxFit.cover,
              height: 200,
              width: 300,
            ),
            SizedBox(
              height: 30,
              //child: Text("hello"),
            ),
            Text("WELCOME $name",
                style: TextStyle(
                  fontSize: 25,
                )),
            Padding(
              //wrap in a padding class
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 9.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.menu),
                        hintText: " Enter Username",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " Enter Password",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell (
                    splashColor: Colors.red,
                    onTap: () async{
                      setState(() {
                        changebutton = true;

                      });
                      await Future.delayed(Duration(seconds: 1));
                     await Navigator.pushNamed(context, MyRoutes.homeroutes);
                     setState(() {
                       changebutton=false;
                     });

                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changebutton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                      decoration: BoxDecoration(
                        // shape:  changebutton? BoxShape.circle:BoxShape.rectangle,
                         color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Alignment.bottomRight;
                  //      Navigator.pushNamed(context, MyRoutes.homeroutes);  //use pushnamed for string input
                  //   },
                  //   child: Text(
                  //     "Login",
                  //   ),
                  //   style: TextButton.styleFrom(
                  //       foregroundColor: Colors.black,
                  //       backgroundColor: Colors.white,
                  //       minimumSize: Size(140, 40) //text  color
                  //       ),
                  //
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
