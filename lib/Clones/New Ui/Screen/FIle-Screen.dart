import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class FilePage extends StatefulWidget {
  const FilePage({Key? key}) : super(key: key);

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 45,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                ),
                Container(
                  child: Image.asset("assets/images/profile (1).png"),
                )
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "File \nManager",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.menu_open,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Let's clean and manage your file's",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i=1;i<4;i++)
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xff05103A),
                        borderRadius: BorderRadius.circular(20)),
                    height: 250,
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Manager",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            Icon(
                              Icons.accessibility_new_outlined,
                              size: 20,
                              color: Colors.grey.shade300,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Large\nfiles",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            Column(
                              children: const [
                                Text(
                                  "92",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff7CFF01),
                                  ),
                                ),
                                Text(
                                  "items",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: const LinearProgressIndicator(
                            value: 0.7,
                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff7CFF01)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              "100.75 /128 Gb ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 40,
                            child: SliderButton(
                                label: const Text(
                                  ">>>",
                                ),
                                backgroundColor: Colors.grey.shade600,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                                  padding: EdgeInsets.all(5),
                                  child: Text("Clean",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                ),
                                action: () {})),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
