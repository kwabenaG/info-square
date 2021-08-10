/// page for dicover from the home page .... pick your favorite  discovery

import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue[800]),
          elevation: 0,
          backgroundColor: Colors.black12,
          title: Text('Pick Favorite Discovery',
              style: TextStyle(color: Colors.blue[800])),
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          color: Colors.black12,
          child: Container(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ListView(shrinkWrap: true, children: [
              Card(
                  shadowColor: Colors.black54,
                  child: ListTile(
                      leading: Icon(Icons.policy_sharp),
                      title: Text("Campus Politics"))),
              Card(
                  child: ListTile(
                      leading: Icon(Icons.policy_sharp),
                      title: Text("Religious Groups")))
            ]),
            Text('aaaaaaaa')
          ])),
        ));
  }
}
