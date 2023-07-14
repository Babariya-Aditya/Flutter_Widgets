import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Timepick()
    );
  }
}
class Timepick extends StatefulWidget {
  const Timepick({Key? key}) : super(key: key);

  @override
  State<Timepick> createState() => _TimepickState();
}

class _TimepickState extends State<Timepick> {
  var TimeController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: TextField(controller: TimeController,
    decoration: InputDecoration(labelText: "Select Time"),
    onTap: () {
    ShowTime(context);
    FocusScope.of(context).requestFocus(FocusNode());
    },
    ),
      ),
      )
    );
  }

  Future<void> ShowTime(BuildContext context) async {
    var time= await showTimePicker(context: context,helpText: "ENter Time",initialTime: TimeOfDay.now());
    if(time!=null){
      TimeController.text=time.format(context);
    }
  }
}
