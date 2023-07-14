import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Material App',
      home: HEllo(),
    );
  }
}


class HEllo extends StatelessWidget {
  const HEllo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void  showAlert(BuildContext context) {

      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("Hello"),
        );
      },);
    }
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showAlert(context);
        }, child: Text("Hell")

        ),
      ),
    );
  }
}
