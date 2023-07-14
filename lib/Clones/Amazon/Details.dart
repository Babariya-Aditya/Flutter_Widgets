import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  Container getText(String s, {double? size, Color? color,double? h,double? w,}) {
  return Container(

  height: h,
  width: w,
  child: Text(
  s,
  style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: size,
  color: color,

  ),
  ),
  );
  }

  Container geticon(
  IconData data,
  Color color,
  ) {
  return Container(
  child: Icon(
  data,
  color: color,
  size: 30,
  ),
  );
  }
  Row getdetails(){
  return  Row(
  children: [
  Stack(
  alignment: Alignment.center,
  children: [
  Container(
  height: 200,
  width: 390,
  color: Colors.blueGrey,
  ),
  Positioned(
  left: -15,
  child: Container(
  height: 200,
  padding: EdgeInsets.all(10),
  width: 180,
  child: Image.network(
  ""),
  ),
  ),
  Positioned(
  top: 23,
  right: 70,
  child: getText("Apple Iphone 14 (64GB)-Red",size: 14,color: Colors.black,w: 160)
  ),
  Positioned(top: 55,
  right: 168,

  child: getText("40,999",size: 20,color: Colors.black)),

  Positioned(top:58,
  right: 115,
  child: getText("M.R.P :",color: Colors.black,size: 14)),
  Positioned(top: 58,
  right: 70,
  child: Container(


  child: Text(
  "54,999 ",
  style: TextStyle(

  fontSize: 14,
  color: Colors.black,
  decoration: TextDecoration.lineThrough
  ),
  ),
  ),
  ),
  Positioned(top: 80,
  right: 180,
  child: getText("(25% off)",size: 12))

  ],
  )
  ],
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
