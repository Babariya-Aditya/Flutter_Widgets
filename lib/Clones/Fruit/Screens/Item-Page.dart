import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modals/Bottom-Navigation2.dart';
import '../Modals/Fruit-Detail-List.dart';

class ItemPage extends StatelessWidget {
  FruitList fruitList;

  ItemPage(this.fruitList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f5f8),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,

                            )
                          ],
                          color: Color.fromARGB(255, 255, 230, 177),
                          borderRadius: BorderRadius.circular(0)),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(0),
                      width: double.infinity,
                      height: 300,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 25,
                                  )),Container(height: 35,
                                    padding: EdgeInsets.only(bottom: 5),
                                    width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),


                                    child: IconButton(
                                    onPressed: () {

                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      size: 25,
                                    )),
                                  ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 170,
                            width: 170,
                            child: Image.asset(
                              '${fruitList.image}',fit: BoxFit.fill,

                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            spreadRadius: 0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(00)),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${fruitList.itemname}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("\$ ${fruitList.price}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green),),
                            Text('1 Kg',style: TextStyle(fontSize: 22))
                          ],
                        )
                      ],
                    ),


                  ),
                  Container(

                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            spreadRadius: 00,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0)),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Column(
                        children: [
                      Row(
                        children: [
                          Text('Product Details',style: TextStyle(fontSize: 22,fontWeight:  FontWeight.bold),),

                        ],
                      ),
                          Text('''
                          ${fruitList.productdetail}
                          ''',style: TextStyle(fontSize: 16),)
                    ]),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1,
                              spreadRadius: 0,
                            )
                          ],

                          borderRadius: BorderRadius.circular(00)),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),

                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          for(int i=8;i>0;i--)
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  )
                                ],
                                color: Color.fromARGB(255, 255, 230, 177),
                                borderRadius: BorderRadius.circular(10)),

                            height: 80
                            ,
                            width: 80,
                            child: Image.asset(
                              'assets/fruits/$i.png',
                              fit: BoxFit.fill,
                            ),
                          ),],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigation2(),
    );
  }
}
