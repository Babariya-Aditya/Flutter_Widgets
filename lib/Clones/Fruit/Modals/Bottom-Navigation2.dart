import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Clones/Fruit/Screens/Cart-Page.dart';

class BottomNavigation2 extends StatefulWidget {
  const BottomNavigation2({Key? key}) : super(key: key);

  @override
  State<BottomNavigation2> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xfff5f5f5),borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
      height: 90,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {

            },
            child: Container(
              height:
              60,
              width: 90,

              decoration: BoxDecoration(color: Color(0xff1e3779),borderRadius: BorderRadius.circular(10)),
              child: Icon(CupertinoIcons.cart,size: 35,color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
            },
            child: Container(
              alignment: Alignment.center,
              height:
              60,
              width: 190,

              decoration: BoxDecoration(color: Color(0xff1e3779),borderRadius: BorderRadius.circular(10)),
              child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
            ),
          )
        ],
      ),
    );
  }
}
