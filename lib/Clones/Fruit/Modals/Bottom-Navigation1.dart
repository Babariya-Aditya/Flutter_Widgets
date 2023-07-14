import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNvigation extends StatefulWidget {
  const BottomNvigation({Key? key}) : super(key: key);

  @override
  State<BottomNvigation> createState() => _BottomNvigationState();
}


class _BottomNvigationState extends State<BottomNvigation> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(Icons.home,color: Colors.black,size: 30,),
              SizedBox(height: 8,),
              Text("My Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.search,color: Colors.black,size: 30,),
              SizedBox(height: 8,),
              Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ],
          ),
          Column(
            children: [
              Icon(CupertinoIcons.cart,color: Colors.black,size: 30,),
              SizedBox(height: 8,),
              Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.person,color: Colors.black,size: 30,),
              SizedBox(height: 8,),
              Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ],
          ),

        ],
      ),
    );
  }
}
