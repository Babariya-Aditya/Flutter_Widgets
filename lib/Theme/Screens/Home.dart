import 'package:flutter/material.dart';
import 'package:project1/Theme/Screens/Next.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            style: TextStyle(color: Colors.redAccent),
            decoration: InputDecoration(labelText: "Enter text"),
          ),
          SizedBox(height: 20,),
          Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Text,",
                    style: TextStyle(fontSize: 18),
                  ))),
          SizedBox(height: 20,),
          Text(
            "Hello",
            style:Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 20,),
          Text(
            "Hii, Aditya Babariya ,Here",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          CheckboxListTile(value: true, onChanged: (value) {
          },title: Text("Terms and Conditions"),
          controlAffinity: ListTileControlAffinity.leading,)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Next(),));
        },
      ),
    );
  }
}
