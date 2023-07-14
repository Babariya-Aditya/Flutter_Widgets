import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {
                  Navigator.pop(context);
                },child: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                SizedBox(width: 100,),
                Text("My Cart",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                Spacer(),
                Container(
                  
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.notifications,color: Colors.white,size: 30),
                )
              ],
            ),
          )],
      ),

    );
  }
}
