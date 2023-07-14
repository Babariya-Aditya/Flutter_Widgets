import 'package:flutter/material.dart';

class ColoumnAndRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,bottom: 20
                    ),
                    height: 200,
                    width: 200,
                    color: Colors.deepPurpleAccent,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,bottom: 20
                    ),
                    height: 200,
                    width: 200,
                    color: Colors.pink,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: 20,bottom: 20
                    ),
                    height: 200,
                    width: 200,
                    color: Colors.deepPurpleAccent,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: 20,bottom: 20
                    ),
                    height: 200,
                    width: 200,
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
