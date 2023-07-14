import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(SelfExample());

class SelfExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        home: ElevatedButtonSelfExample()
    );
  }
}
class ElevatedButtonSelfExample extends StatefulWidget {
  const ElevatedButtonSelfExample({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonSelfExample> createState() => _ElevatedButtonSelfExampleState();
}

class _ElevatedButtonSelfExampleState extends State<ElevatedButtonSelfExample> {
  var textt = "Current Container Color";
  var colorOfCon = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Elevated New Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.yellow,
            // ),
            const SizedBox(height: 50,),
            Container(
              height: 100,
              width: 100,
              color: colorOfCon,
            ),
            const SizedBox(height: 50,),
            Text( textt ,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    textt = "Change The Color Of The Container";
                    colorOfCon = Colors.cyan;
                  });
                }, child: const Text("Click Here To Change The Color")),
          ],
        ),
      ),
    );
  }
}