// showmodaldialog for drawer menu  items
import "package:flutter/material.dart";
import 'package:info_square/widgets/homepage/drawer_menu_items/drawer_consants.dart';

/// "context" is used as a parameter for major widgets defined

// handles all the drawer mandate context
Widget mandateMethod(context) {
  return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue[800]),
          title: Text("About Us",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue[800])),
          backgroundColor: Colors.black12,
          elevation: 0),
      body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.black12,
          child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(missionStatement(), style: TextStyle(color: Colors.black87)),
          ]))));
}
