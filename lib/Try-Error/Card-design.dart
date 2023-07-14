import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectedvalue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: GridView.builder(itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,childAspectRatio: .8),
            itemBuilder: (context, index) {
              return Card(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.red,
                child: Column(
                  children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Hello", style: TextStyle(fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                      ),
                      PopupMenuButton(onSelected: (value) {
                      },color: Colors.white,iconSize: 28,itemBuilder: (context) {
                        return [
                          PopupMenuItem(child: Text("Remove"),
                          value: 0),

                          PopupMenuItem(child: Text("Details"),value: 1,)
                        ];
                      },)
                    ],
                  ),

                  ],
                ),
              );
            },)
      ),
    );
  }
}
