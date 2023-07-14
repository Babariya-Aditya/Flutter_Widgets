import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Edgeinset(),
    );
  }
}
class Edgeinset extends StatelessWidget {
  const Edgeinset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets viewInsets=MediaQuery.of(context).viewInsets;
    EdgeInsets viewPadding=MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edgeinsets'),
      ),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text(""" 
  top:${viewPadding.top}
  bottom:${viewPadding.bottom}
  bottom:${viewInsets.bottom}
  
  """),
            TextField(),
            ElevatedButton(onPressed: () {
ShowSheet(context);
            }, child: Text("Submit"))
          ],)
        ),
      ),
    );
  }
}
ShowSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          TextField(),
          ElevatedButton(onPressed: () {

          }, child: Text("Submit"))
        ],
      ),),
    );
  },);
}


