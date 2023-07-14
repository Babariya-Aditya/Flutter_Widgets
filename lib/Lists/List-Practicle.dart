import 'package:flutter/material.dart';

import 'User_ Details.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Listt(),
    );
  }
}

class Listt extends StatefulWidget {
  const Listt({Key? key}) : super(key: key);

  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  List<User> userlist = [];
  @override
  void initState() {
    super.initState();
    userlist.add(User("1", "Aditya"));
    userlist.add(User("2", "Adit"));
    userlist.add(User("3", "Adiya"));
    userlist.add(User("4", "Adita"));

    // Add code after super
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('List Builder'),
        ),
        body: ListView.builder(
          itemCount: userlist.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(userlist[index].name),
              subtitle: Text(userlist[index].id),
              trailing: CheckboxListTile(
                value: userlist[index].ischecked,
                onChanged: (value) {
                  userlist[index].ischecked = value!;
                },
              ),
            );
          },
        ));
  }
}
