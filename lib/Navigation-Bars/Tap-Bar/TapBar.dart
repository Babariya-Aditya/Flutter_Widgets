import 'package:flutter/material.dart';
import 'package:project1/Navigation-Bars/Bottom-NavigationBAr/Screens/ProfileScreen.dart';
import 'package:project1/Navigation-Bars/Tap-Bar/Screens/NotificationScreen.dart';

import 'Screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TapBar()
    );
  }
}
class TapBar extends StatefulWidget {
  const TapBar({Key? key}) : super(key: key);

  @override
  State<TapBar> createState() => _TapBarState();
}

class _TapBarState extends State<TapBar>with SingleTickerProviderStateMixin {
 late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();

  }

  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: () {
             _tabController.index=2;
    },child: Icon(Icons.navigate_next_outlined),),
      appBar: AppBar(
        bottom: TabBar(
            controller: _tabController,tabs: [
          Tab(
            icon: Icon(Icons.cabin_rounded),

          ),
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
          Tab(
            icon: Icon(Icons.train),
          ),
        ]),
        title: Text('Material App Bar'),
      ),
      body: TabBarView(controller: _tabController,children: [

        HomeScreen(),
        ProfileScreen(),
        NotificationScreen()


      ])
    );
  }
}
