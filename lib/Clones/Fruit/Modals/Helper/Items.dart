import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Clones/Fruit/Screens/Item-Page.dart';

import '../Fruit-Detail-List.dart';
class ItemClass extends StatefulWidget {
  @override
  State<ItemClass> createState() => _ItemClassState();
}

class _ItemClassState extends State<ItemClass> {
  var Fruits=<FruitList>[];
  void initState() {
    // TODO: implement initState
    super.initState();
    Fruits.add(FruitList(
        itemname: "Orange",
        price: 40,
        image: 'assets/fruits/1.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "WaterMelom",
        price: 30,
        image: 'assets/fruits/2.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "Kiwi",
        price: 50,
        image: 'assets/fruits/3.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "Banana",
        price: 20,
        image: 'assets/fruits/4.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "Gwava",
        price: 60,
        image: 'assets/fruits/5.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "Blue Berry",
        price: 80,
        image: 'assets/fruits/6.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));
    Fruits.add(FruitList(
        itemname: "Cherry",
        price: 60,
        image: 'assets/fruits/7.png',
        productdetail:
        "The fruit is a modified berry known as a hesperidium, and the flesh is divided into segments called carpels. The usual shape of the sweet-orange fruit is round and the colour of its pulp orange, but there are variations. The mandarin, for example, is distinctly flattened, and the blood orange has red pulp."));


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 1,blurRadius: 1),]
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Flash Sale',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GridView.builder(itemCount: Fruits.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.6,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context, index) {
            return  InkWell(
              onTap: () {
                var fruitList=FruitList(itemname: Fruits[index].itemname, price: Fruits[index].price, image: Fruits[index].image, productdetail: Fruits[index].productdetail);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(fruitList),));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 2)],
                    color: Color(0xfff7f5f8)),

                child: Column(
                  children: [
                    Card(

                      elevation: 00,
                      color: Color(0xfff7f5f8),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        Fruits[index].image,
                        fit: BoxFit.fill,
                        height: 90,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          child: Text("${Fruits[index].itemname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),


                    Row(
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom( backgroundColor: Color(0xff474787)),
                          onPressed: () {

                          },
                          child: Container(
                            child: Text("\$ ${Fruits[index].price}/kg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.favorite,color: Color(0xff474787)),
                      ],
                    ),

                  ],
                ),
              ),
            );

          },)

        ],
      ),
    );
  }
}
