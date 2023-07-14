import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ResponsiveSize(),
    );
  }
}
class ResponsiveSize extends StatelessWidget {
  const ResponsiveSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          height: size.height*0.3,
          width: size.width*0.4,
          color: Colors.amber,
          child: Column(
            children: [
              Text('Hello World',style: TextStyle(fontSize: size.width*0.08)),
              ActionChip(label: Text("FHh"),avatar: Icon(Icons.add),backgroundColor: Colors.red,)
            ],
          )
        ),
      ),
    );
  }
}
