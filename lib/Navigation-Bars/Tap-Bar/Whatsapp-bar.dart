import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          //isScrollable: true,

          tabs: <Tab>[
            new Tab(text: 'CHATS', icon: new Icon(Icons.chat)),
            new Tab(text: 'STATUS', icon: new Icon(Icons.speaker_notes)),
            new Tab(text: 'CALLS', icon: new Icon(Icons.call)),
            new Tab(text: 'CAMERA', icon: new Icon(Icons.camera_alt)),
          ],
        ),
      ),
      body: new TabBarView(
        controller:_tabController,
        children: <Widget>[
          new ChatScreen(),
          new StatusScreen(),
          new CallHistory(),
          new CameraScreen(),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Chats'),
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Status'),
      ),
    );
  }
}

class CallHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Calls'),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Camera'),
      ),
    );
  }
}