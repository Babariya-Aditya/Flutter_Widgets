import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import '../Modals/Bottom-Navigation1.dart';
import '../Modals/Helper/Items.dart';


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xfff7f5f8),
        bottomNavigationBar: BottomNvigation(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Fruit Mart'),
        ),
        body: ListView(
          children: [
            ScrollLoopAutoScroll(
              scrollDirection: Axis.horizontal,
              delayAfterScrollInput: Duration(seconds: 3),
              gap: 0,
              delay: Duration(seconds: 3),
              child: Row(
                children: [
                  for (int i = 9; i < 12; i++)
                    Card(
                      margin: EdgeInsets.only(
                        top: 18,
                        left: 8,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'assets/fruits/$i.jpg',
                        fit: BoxFit.fill,
                        height: 250,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 1,blurRadius: 1),],
                    color: Colors.white),
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  shrinkWrap: true,
                  children: [
                    for (int i = 1; i < 9; i++)
                      Card(
                        elevation: 00,
                        color: Color.fromARGB(255, 255, 230, 177),
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),
                        margin: EdgeInsets.all(7),
                        child: Image.asset(
                          'assets/fruits/$i.png',
                          fit: BoxFit.fill,
                          height: 50,
                        ),
                      ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            ItemClass(),
          ],
        ));
  }
}
