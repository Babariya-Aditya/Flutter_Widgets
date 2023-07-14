import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 Column getbox(IconData datas1,IconData datas2, String s1,String s2){
   return Column(
     children: [
       Stack(
         children: [
           Container(
             margin: EdgeInsets.only(left: 20),
             decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
             height: 100,
             width: 100,

           ),
           Positioned(
             top: 25,
             left: 55,

             child: Container(

               child: Icon(datas1,size: 35,color: Colors.red.shade600,),
             ),
           ),
           Positioned(
             bottom: 20,
             left: 30,
             child: Container(
               child: Text(s1,style: TextStyle(color: Colors.white,fontSize: 16),),
             ),
           )
         ],
       ),
       SizedBox(
         height: 20,
       ),
       Stack(
         children: [
           Container(
             margin: EdgeInsets.only(left: 20),
             decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
             height: 100,
             width: 100,

           ),
           Positioned(
             top: 25,
             left: 55,

             child: Container(

               child: Icon(datas2,size: 35,color: Colors.red.shade600,),
             ),
           ),
           Positioned(
             bottom: 20,
             left: 30,
             child: Container(
               child: Text(s2,style: TextStyle(color: Colors.white,fontSize: 16),),
             ),
           ),
         ],
       ),
     ],
   );
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),

          ),
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(100, 60),
                        bottomRight: Radius.elliptical(100, 60))),
                height: 400,
              ),

              Positioned(
                top: 10,
                child: Container(
                  child: Text(
                    "PIET-1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/Adi2.jpg"),
                ),
              ),
              Positioned(
                top: 150,
                child: Container(
                  child: Text(
                    "ADITYA RAJESHBHAI BABARIYA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 170,
                child: Container(
                  child: Text(
                    "(210303105006)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                child: Container(
                  child: const Text(
                    "9662487731 | 210303105006@paruluniversity.ac.in",
                    style: TextStyle(decoration: TextDecoration.underline,decorationThickness: 2,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                child: Container(
                  child: Text(
                    "--------------------------------------------------------------------------",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 235,
                child: Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Branch    ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                ),
                          ),
                          Text(
                            "CSE    ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(

                        children: [
                          Text(
                            "SEM    ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "4TH    ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Division",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "4B24_CSE_202223   ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Roll No.    ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "6    ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Batch",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: 290,
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Mentor Name:                              ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Miss Apeksha AnilKumar Joshi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text("                "),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                        child: Icon(Icons.phone,size: 25,color: Colors.white),
                      ),
                      Text("   "),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                        child: Icon(Icons.mail_outline_outlined,size: 25,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 360,
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,
                                
                              ),
                              Positioned(
                                top: 25,
                                left: 35,

                                child: Container(

                                  child: Icon(Icons.calendar_month_sharp,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 10,
                                child: Container(
                                  child: Text("Acedemics",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,

                              ),
                              Positioned(
                                top: 25,
                                left: 35,

                                child: Container(

                                  child: Icon(Icons.sticky_note_2_rounded,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 10,
                                child: Container(
                                  child: Text("  Schedule",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,

                              ),
                              Positioned(
                                top: 25,
                                left: 55,

                                child: Container(

                                  child: Icon(Icons.table_chart_rounded,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 30,
                                child: Container(
                                  child: Text("Time Table",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,

                              ),
                              Positioned(
                                top: 25,
                                left: 55,

                                child: Container(

                                  child: Icon(Icons.assessment_outlined,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 30,
                                child: Container(
                                  child: Text("     Result ",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,

                              ),
                              Positioned(
                                top: 25,
                                left: 55,

                                child: Container(

                                  child: Icon(Icons.notifications_active,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 30,
                                child: Container(
                                  child: Text("Notification",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(color: Colors.blue.shade400,borderRadius: BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 100,

                              ),
                              Positioned(
                                top: 25,
                                left: 55,

                                child: Container(

                                  child: Icon(Icons.co_present_rounded,size: 35,color: Colors.red.shade600,),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 30,
                                child: Container(
                                  child: Text("Attendence",style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),



                      getbox(Icons.cabin,Icons.ice_skating , "hello", "Hii"),],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
