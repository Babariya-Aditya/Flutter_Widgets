import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Ratingbar(),
    );
  }
}

class Ratingbar extends StatefulWidget {
  const Ratingbar({Key? key}) : super(key: key);

  @override
  State<Ratingbar> createState() => _RatingbarState();
}

class _RatingbarState extends State<Ratingbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton(onSelected: (value) {
          switch(value){
            case 1 :

              break;
            case 2 :
              ShowRating(context);
              break;
            case 3 :
              break;
          }
        },itemBuilder: (context) {
          return [

            PopupMenuItem( value:1,child: Text("Edit") ),

            PopupMenuItem(onTap: () {


            },value:2,child: Text("Details") ),

            PopupMenuItem(onTap: () {


            },value:3,child: Text("Logout") ),

          ];
        },)
      ],

        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
            child: ElevatedButton(
              onPressed: () {
                ShowRating(context);
              },
              child: Text("Rate us"),
            )),
      ),
    );
  }

  void ShowRating(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(15),


            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [Text("Rate Us",style: TextStyle(fontSize: 20)),
                SizedBox(height: 20,),

                Image.asset("assets/images/rating (2).png"),

                SizedBox(height: 20,),
                //  Image.network("https://cdn-icons-png.flaticon.com/128/3257/3257727.png"),

                RatingBar.builder(allowHalfRating: true,itemPadding: EdgeInsets.all(4),direction: Axis.horizontal,itemCount: 5,initialRating: 0,minRating: 1,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                  onRatingUpdate: (value) {
                    print(value);
                  },
                ),
                Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(onPressed: () {

                    }, child: Text("Submit",style: TextStyle(fontSize: 20),)),
                    SizedBox(width: 20,),
                    OutlinedButton(onPressed: () {

                    }, child: Text("Cancel",style: TextStyle(fontSize: 20),))
                  ],
                )

              ],
            ),
          ),
        );
      },
    );
  }
}
